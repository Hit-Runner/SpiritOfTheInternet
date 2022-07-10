import copy
import math
import itertools
import cv2
import typing
import random
import numpy as np
from atttack import *
from pywt import dwt2, idwt2, wavedec2
from matplotlib import pyplot as plt


def ReadImg(filepath: str, flag=None) -> np.ndarray:
    return cv2.imread(filepath, flag)


def GenerateList(img: np.ndarray, scale: tuple):
    # 生成随机坐标序列
    s = img.shape[0]
    coords = list(itertools.product(range(scale[0]), range(scale[1])))
    result = random.sample(coords, s)
    return result


def LSBEncrypt(img: np.ndarray, text: str) -> np.ndarray:
    text_b = ''.join([bin(ord(c)).replace('0b', '') for c in text])
    s = len(text_b)
    s_b = ''.join(bin(s)).replace('0b', '').zfill(8)
    cnt = 0
    text_b = s_b + text_b
    s += 8
    for row in img:
        for col in row:
            if cnt == s:
                break
            col[2] = int(text_b[cnt])
            cnt += 1
    return img


def LSBDecrypt(img: np.ndarray) -> str:
    t = img[0, 0:8, 2]
    i = int(''.join([str(i) for i in [int(b) for b in t]]), 2)
    s = i + 8
    cnt = 0
    msg = ''
    flag = False
    for row in img:
        if flag:
            break
        for col in row:
            if cnt == s:
                flag = True
                break
            msg += str(int(col[2]))
            cnt += 1
    msg = msg[8:]
    msg = ''.join([chr(i) for i in [int(b, 2) for b in [msg[7 * n:7 * n + 7] for n in range(len(msg) // 7)]]])
    return msg


def LSBEncryptGray(img: np.ndarray, watermark: np.ndarray) -> (np.ndarray, list):
    row, col = img.shape
    watermark = watermark.flatten()
    coords = GenerateList(watermark, (row, col))
    for i, c in enumerate(coords):
        img.itemset((c[0], c[1]), img.item(c[0], c[1]) + watermark[i])
    return img, coords


def LSBDecryptGray(original: np.ndarray, encrypted: np.ndarray, scale: tuple, coords: list) -> (np.ndarray, np.ndarray):
    w = original - encrypted
    res = []
    for c in coords:
        res.append(w.item(c[0], c[1]))
    res = np.array(res, np.uint8)
    return np.reshape(res, scale, 'C'), w


def WatermarkPreProcess(watermark: np.ndarray, scale: tuple) -> np.ndarray:
    watermark = cv2.resize(watermark, scale)
    ret, watermark = cv2.threshold(watermark, 127, 1, cv2.THRESH_BINARY)
    return watermark


def ComputePSNR(img_1, img_2):
    mse = np.mean((img_1 / 1.0 - img_2 / 1.0) ** 2)
    if mse < 1.0e-10:
        return 100
    return 10 * math.log10(255.0 ** 2 / mse)


def FFTGenerateKey(img: np.ndarray) -> (np.ndarray, np.ndarray):
    s = img.shape
    key = np.random.randint(0, 255, s).astype(np.uint8)
    enc = cv2.bitwise_xor(img, key)
    enc = np.fft.fft2(enc)
    return key, enc


def FFTAnalyze(img: np.ndarray) -> (np.ndarray, np.ndarray):
    f = np.fft.fft2(img)
    fshift = np.fft.fftshift(f)
    result = 20 * np.log(np.abs(fshift))
    return result, fshift


def FFTEncrypt(img: np.ndarray, watermark: np.ndarray) -> (np.ndarray, np.ndarray, np.ndarray, tuple):
    orow, ocol = img.shape
    m = min(orow, ocol)
    watermark = cv2.resize(watermark, (m // 4, m // 4))
    row, col = watermark.shape
    key, enc = FFTGenerateKey(watermark)
    img[0:row, 0:col] = watermark
    img[orow - row:orow, ocol - col:ocol] = watermark

    redo = np.fft.ifft2(img)
    redo = np.abs(redo)

    return redo, img, key, (row, col)


def FFTDecrypt(ori_fft: np.ndarray, enc_fft: np.ndarray, scale: tuple, key,irote:bool) -> np.ndarray:
    if irote:
        enc_fft = np.rot90(enc_fft,-1)
    roi = enc_fft[0:scale[0], 0:scale[1]]


    return np.abs(roi).astype(np.uint8)


def DWTEncrypt(img: np.ndarray, watermark: np.ndarray, af: float) -> (np.ndarray):
    d1 = dwt2(img, 'haar')
    ll1 = d1[0]
    d2 = dwt2(ll1, 'haar')
    ll2 = d2[0]
    d3 = dwt2(ll2, 'haar')
    row, col = d3[0].shape
    watermark = WatermarkPreProcess(watermark, (row, col))
    u, s, v = np.linalg.svd(watermark)
    U, S, V = np.linalg.svd(d3[0])
    S2 = S + af * s
    SS = np.zeros([U.shape[0], V.shape[1]])
    for i in range(S2.shape[0]):
        SS[i][i] = S2[i]
    tmp = np.dot(U, SS)
    ll3 = np.dot(tmp, V)
    rd3 = (ll3, d3[1])

    rll2 = idwt2(rd3, 'haar')
    rd2 = (rll2, d2[1])
    rll1 = idwt2(rd2, 'haar')
    rd1 = (rll1, d1[1])
    r0 = idwt2(rd1, 'haar')
    return r0


def DWTDecrypt(ori: np.ndarray, enc: np.ndarray, wm: np.ndarray, af: float) -> np.ndarray:
    d1 = dwt2(ori, 'haar')
    d2 = dwt2(d1[0], 'haar')
    d3 = dwt2(d2[0], 'haar')
    ed1 = dwt2(enc, 'haar')
    ed2 = dwt2(ed1[0], 'haar')
    ed3 = dwt2(ed2[0], 'haar')

    U, S, V = np.linalg.svd(d3[0])
    U1, S1, V1 = np.linalg.svd(ed3[0])
    wm = WatermarkPreProcess(wm, ed3[0].shape)
    uw, s, vw = np.linalg.svd(wm)
    sw = (S1 - S) / af
    ss = np.zeros([uw.shape[0], vw.shape[1]])
    for i in range(sw.shape[0]):
        ss[i][i] = sw[i]
    tmp = np.dot(uw, ss)
    res = np.dot(tmp, vw)
    return res


if __name__ == "__main__":
    t = ReadImg("0215.png", cv2.IMREAD_GRAYSCALE)
    wt = ReadImg("1.jpeg", cv2.IMREAD_GRAYSCALE)
    # im = DWTEncrypt(t, wt, 0.4)
    # t = ReadImg("0215.png", cv2.IMREAD_GRAYSCALE)
    # reb = DWTDecrypt(t, im, wt, 0.2)
    # ga = deepcopy(im)
    # r,c = ga.shape
    # ga[0:r,0:128] = ga[0:r,c-128:c]
    # ga = np.rot90(ga)
    # rp = DWTDecrypt(ga,im,wt,0.2)
    # plt.subplot(232)
    # plt.imshow(im, cmap='gray')
    # plt.subplot(233)
    # plt.imshow(reb, cmap='gray')
    # plt.subplot(234)
    # plt.imshow(rp,cmap='gray')
    # plt.subplot(235)
    # plt.imshow(ga,cmap='gray')
    # plt.show()
    # b = LSBDecrypt(i)
    # print(b)
    # t = ReadImg("/home/bryandu/图片/1.png", cv2.IMREAD_GRAYSCALE)
    # w = LSBDecryptGray(t, img, (256, 256))
    # print(ComputePSNR(t, img))
    # cv2.imshow('img', w)
    # cv2.waitKey(0)
    fft_forshow, fft = FFTAnalyze(t)
    im, f, k ,scale= FFTEncrypt(fft, wt)
    redo = FFTDecrypt(FFTAnalyze(t)[1],f,scale,k,False)
    plt.subplot(331)
    plt.imshow(im, cmap='gray')
    plt.title('encrypted')
    plt.axis('off')
    plt.subplot(332)
    plt.imshow(fft_forshow, cmap='gray')
    plt.title('ori_fft')
    plt.axis('off')
    plt.subplot(333)
    plt.imshow(20 * np.log(np.abs(f)), cmap='gray')
    plt.axis('off')
    plt.subplot(334)
    plt.imshow(redo,cmap='gray')
    # ga = gaussian_noise(im.astype(np.uint8))
    ga = copy.deepcopy(im)
    # ga[0:128,0:128] = np.zeros((128,128),np.float32)
    ga = np.rot90(ga)
    plt.subplot(336)
    plt.imshow(ga,cmap='gray')
    rep = FFTAnalyze(ga)
    plt.subplot(337)
    plt.imshow(rep[0],cmap='gray')
    red = FFTDecrypt(FFTAnalyze(t)[1],rep[1],scale,k,True)
    plt.subplot(335)
    plt.imshow(red,cmap='gray')
    plt.show()
