import cv2
import numpy as np
from matplotlib import pyplot as plt
import pywt
mask = np.array([[1,1,1,1,0,0,0,0],
                 [1,1,1,0,0,0,0,0],
                 [1,1,0,0,0,0,0,0],
                 [1,0,0,0,0,0,0,0],
                 [0,0,0,0,0,0,0,0],
                 [0,0,0,0,0,0,0,0],
                 [0,0,0,0,0,0,0,0],
                 [0,0,0,0,0,0,0,0]
                ])
i = cv.imread('images/img_009_SRF_4_HR.png',0)
hdata = np.vsplit(i,512//8)
for index in range(512//8):
    block = np.hsplit(hdata[index],512//8)
    for j in range(512//8):
        dct = cv.dct(block[j].astype(np.float32))
        dct *= mask
        block[j] = cv.idct(dct)/255
    hdata[index] = np.hstack(block)
rec = np.vstack(hdata)

plt.figure(figsize=(10,10))
plt.subplot(2,2,1)
plt.axis('off')
plt.title('origin')
plt.imshow(i,cmap='gray')
plt.subplot(2,2,2)
plt.axis('off')
plt.title('origin dct')
dct = cv.dct(i.astype(np.float32))
plt.imshow(np.log(np.abs(dct)),cmap='gray')
plt.subplot(2,2,3)
plt.axis('off')
plt.title('reconstruct')
plt.imshow(rec,cmap='gray')
plt.subplot(2,2,4)
# res = np.vstack(dcts)
plt.axis('off')
plt.title('reconstruct dct')
rec_dct = cv.dct(rec.astype(np.float32))
abs_ = np.abs(rec_dct)
abs_ += 1e-10
print(np.log(abs_)[503,511])
plt.imshow(np.log(abs_),cmap='gray')