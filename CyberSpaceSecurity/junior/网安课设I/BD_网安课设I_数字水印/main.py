import sys
import random
import copy
import numpy as np
import matplotlib
from PySide6 import QtCore, QtWidgets, QtGui
from PySide6.QtUiTools import QUiLoader
from PySide6.QtWidgets import QGraphicsScene
from imageprocess import ReadImg, LSBEncrypt, LSBEncryptGray, LSBDecryptGray, LSBDecrypt, GenerateList, \
    WatermarkPreProcess, FFTDecrypt, FFTEncrypt, FFTAnalyze, FFTGenerateKey, DWTEncrypt, DWTDecrypt
from atttack import poisson_noise,speckle_noise,gaussian_noise,salt_pepper_noise
import cv2

matplotlib.use('Qt5Agg')
from matplotlib.backends.backend_qt5agg import FigureCanvasQTAgg as FigureCanvas
from matplotlib.figure import Figure
import matplotlib.pyplot as plt


class MyFigureCanvas(FigureCanvas):

    def __init__(self, parent=None, width=16, height=10, xlim=(0, 2500), ylim=(-2, 2), dpi=80):
        # 创建一个Figure
        self.fig = plt.Figure(figsize=(width, height), dpi=dpi, tight_layout=True)  # tight_layout: 用于去除画图时两边的空白
        FigureCanvas.__init__(self, self.fig)  # 初始化父类
        # FigureCanvas.setSizePolicy(self, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        FigureCanvas.updateGeometry(self)
        self.setParent(parent)
        # self.original = fig.add_subplot(2, 3, 1)  # 调用figure下面的add_subplot方法，类似于matplotlib.pyplot下面的subplot方法
        # frame = self.original.gca()
        # self.watermark = fig.add_subplot(2,2,2)
        # self.original.spines['top'].set_visible(False)  # 去掉上面的横线
        # self.original.spines['right'].set_visible(False)


class MainWindow(QtWidgets.QMainWindow):
    def __init__(self):
        super().__init__()
        loader = QUiLoader()
        self.ui = loader.load("./UI/mainwindow.ui")
        self.tab_lsb = loader.load("./UI/LSB.ui")
        self.tab_fft = loader.load("./UI/FFT.ui")
        self.tab_dwt = loader.load("./UI/DWT.ui")

        self.ui.tabWidget.addTab(self.tab_lsb, "LSB")
        self.ui.tabWidget.addTab(self.tab_fft, "FFT")
        self.ui.tabWidget.addTab(self.tab_dwt, "DWT")
        self.canvas_lsb = MyFigureCanvas(width=self.tab_lsb.graphicsView.width() / 50,

                                         height=self.tab_lsb.graphicsView.height() / 80,
                                         xlim=(0, 2 * np.pi),
                                         ylim=(-1, 1))  # 实例化一个FigureCanvas
        self.canvas_fft = MyFigureCanvas(width=self.tab_fft.graphicsView.width() / 5,

                                         height=self.tab_fft.graphicsView.height() / 3,
                                         xlim=(0, 2 * np.pi),
                                         ylim=(-1, 1))  # 实例化一个FigureCanvas
        self.canvas_dwt = MyFigureCanvas(width=self.tab_dwt.graphicsView.width() / 5,

                                         height=self.tab_dwt.graphicsView.height() / 3,
                                         xlim=(0, 2 * np.pi),
                                         ylim=(-1, 1))  # 实例化一个FigureCanvas
        self.tab_lsb.selectfile.clicked.connect(self.LoadImage)
        self.tab_lsb.selectwatermark.clicked.connect(self.LoadWaterMark)
        self.tab_lsb.process.clicked.connect(self.LSB)
        self.tab_fft.selectfile.clicked.connect(self.LoadImage)
        self.tab_fft.selectwatermark.clicked.connect(self.LoadWaterMark)
        self.tab_fft.process.clicked.connect(self.FFT)
        self.tab_dwt.selectfile.clicked.connect(self.LoadImage)
        self.tab_dwt.selectwatermark.clicked.connect(self.LoadWaterMark)
        self.tab_dwt.process.clicked.connect(self.DWT)
        self.ui.show()

    def FFT(self):
        im = cv2.cvtColor(self.img, cv2.COLOR_RGB2GRAY)
        bkp = copy.deepcopy(im)
        watermark = self.wm
        ori = self.canvas_fft.fig.add_subplot(431)
        ori.imshow(im, cmap='gray')
        ori.axis("off")
        ori.set_title("original image")

        wm = self.canvas_fft.fig.add_subplot(432)
        wm.imshow(watermark, cmap="gray")
        wm.axis("off")
        wm.set_title("watermark image")

        fft_forshow, fft = FFTAnalyze(im)
        res, f, k, scale = FFTEncrypt(fft, self.wm)
        redo = FFTDecrypt(FFTAnalyze(bkp)[1], f, scale, k,False)

        enc = self.canvas_fft.fig.add_subplot(433)
        enc.imshow(res, cmap='gray')
        enc.set_title("encrypted")
        enc.axis("off")

        ori_fft = self.canvas_fft.fig.add_subplot(434)
        ori_fft.imshow(fft_forshow, cmap='gray')
        ori_fft.set_title("original fft")
        ori_fft.axis("off")

        red = self.canvas_fft.fig.add_subplot(435)
        red.imshow(redo, cmap="gray")
        red.set_title("extracted watermark")
        red.axis("off")

        enc_fft = self.canvas_fft.fig.add_subplot(436)
        enc_fft.imshow(20 * np.log(np.abs(f)), cmap='gray')
        enc_fft.set_title("encrypted fft")
        enc_fft.axis("off")

        rot = self.canvas_fft.fig.add_subplot(437)
        rot_ = np.rot90(res)
        rot.imshow(rot_,cmap='gray')
        rot.axis('off')
        rot.set_title('rotate')

        rotd = self.canvas_fft.fig.add_subplot(4,3,10)
        rotd_ = FFTDecrypt(FFTAnalyze(bkp)[1],FFTAnalyze(rot_)[1],scale,k,True)
        rotd.imshow(rotd_,cmap='gray')
        rotd.axis('off')
        rotd.set_title('decrypt')

        cut = self.canvas_fft.fig.add_subplot(438)
        cut_ = copy.deepcopy(res)
        r,c = cut_.shape
        cut_[0:r,0:(c//4)] = cut_[0:r,c-c//4:c]
        cut.imshow(cut_,cmap='gray')
        cut.set_title('cut')
        cut.axis('off')

        cutd = self.canvas_fft.fig.add_subplot(4,3,11)
        cutd_ = FFTDecrypt(FFTAnalyze(bkp)[1],FFTAnalyze(cut_)[1],scale,k,False)
        cutd.imshow(cutd_,cmap='gray')
        cutd.axis('off')
        cutd.set_title('decrypt')

        gauss = self.canvas_fft.fig.add_subplot(439)
        gauss_ = gaussian_noise(res.astype(np.uint8))
        gauss.imshow(gauss_,cmap='gray')
        gauss.set_title('gaussian noise')
        gauss.axis('off')


        gaussd = self.canvas_fft.fig.add_subplot(4,3,12)
        gaussd_ = FFTDecrypt(FFTAnalyze(bkp)[1],FFTAnalyze(gauss_)[1],scale,k,False)
        gaussd.imshow(gaussd_,cmap='gray')
        gaussd.set_title('decrypt')
        gaussd.axis('off')

        self.graphscene = QGraphicsScene()
        self.graphscene.addWidget(self.canvas_fft)
        self.tab_fft.graphicsView.setScene(self.graphscene)
        self.tab_fft.graphicsView.show()

    def DWT(self):
        im = cv2.cvtColor(self.img, cv2.COLOR_RGB2GRAY)
        bkp = copy.deepcopy(im)
        ori = self.canvas_dwt.fig.add_subplot(431)
        ori.imshow(im, cmap='gray')
        ori.axis('off')
        ori.set_title('original image')

        wm = self.canvas_dwt.fig.add_subplot(432)
        wm.imshow(self.wm, cmap='gray')
        wm.axis('off')
        wm.set_title("watermark image")

        enc = self.canvas_dwt.fig.add_subplot(433)
        en = DWTEncrypt(im, self.wm, 0.2)
        enc.imshow(en, cmap='gray')
        enc.axis('off')
        enc.set_title('encrypted image')

        dec = self.canvas_dwt.fig.add_subplot(435)
        de = DWTDecrypt(bkp, en, self.wm, 0.2)
        dec.imshow(de, cmap='gray')
        dec.axis('off')
        dec.set_title('extracted watermark')

        res = self.canvas_dwt.fig.add_subplot(434)
        residual = en-bkp
        res.imshow(residual,cmap='gray')
        res.axis('off')
        res.set_title('residual')

        sp = self.canvas_dwt.fig.add_subplot(437)
        s_p = salt_pepper_noise(en.astype(np.uint8))
        sp.imshow(s_p,cmap='gray')
        sp.axis('off')
        sp.set_title('peper-salt noise')

        spd = self.canvas_dwt.fig.add_subplot(4,3,10)
        sp_d = DWTDecrypt(bkp,s_p,self.wm,0.2)
        # ret, sp_d = cv2.threshold(sp_d,127,255,cv2.THRESH_BINARY_INV)
        spd.imshow(sp_d,cmap='gray')
        spd.axis('off')
        spd.set_title('decrypt')

        rot = self.canvas_dwt.fig.add_subplot(438)
        rot_ = np.rot90(en)
        rot.imshow(rot_,cmap='gray')
        rot.axis('off')
        rot.set_title('rotate')

        rotd = self.canvas_dwt.fig.add_subplot(4,3,11)
        rotd_ = DWTDecrypt(bkp,rot_,self.wm,0.2)
        rotd.imshow(rotd_,cmap='gray')
        rotd.set_title('decrypt')
        rotd.axis('off')

        cut = self.canvas_dwt.fig.add_subplot(439)
        cu = copy.deepcopy(en)
        r,c = cu.shape
        cu[0:r,0:(c//4)] = cu[0:r,c-c//4:c]
        cut.imshow(cu,cmap='gray')
        cut.set_title('cut')
        cut.axis('off')

        cutd = self.canvas_dwt.fig.add_subplot(4,3,12)
        cud = DWTDecrypt(bkp,cu,self.wm,0.2)
        cutd.imshow(cud,cmap='gray')
        cutd.set_title('decrypt')
        cutd.axis('off')



        self.graphscene = QGraphicsScene()
        self.graphscene.addWidget(self.canvas_dwt)
        self.tab_dwt.graphicsView.setScene(self.graphscene)
        self.tab_dwt.graphicsView.show()

    def LSB(self):
        im = cv2.cvtColor(self.img, cv2.COLOR_RGB2GRAY)
        bkp = copy.deepcopy(im)

        ori = self.canvas_lsb.fig.add_subplot(431)
        ori.imshow(im, cmap='gray')
        ori.axis("off")
        ori.set_title('original image')

        wm = self.canvas_lsb.fig.add_subplot(432)
        wm.imshow(self.wm, cmap="gray")
        wm.axis("off")
        wm.set_title('watermark image')

        wt = WatermarkPreProcess(self.wm, (128, 128))
        img, coord = LSBEncryptGray(im, wt)
        rep, res = LSBDecryptGray(bkp, img, (128, 128), coord)

        enc = self.canvas_lsb.fig.add_subplot(433)
        enc.imshow(img, cmap='gray')
        enc.axis("off")
        enc.set_title('encrypted image')

        repd = self.canvas_lsb.fig.add_subplot(434)
        repd.imshow(rep, cmap='gray')
        repd.axis('off')
        repd.set_title('extracted watermark')

        resd = self.canvas_lsb.fig.add_subplot(435)
        resd.imshow(res, cmap='gray')
        resd.axis('off')
        resd.set_title('residual')

        gauss = self.canvas_lsb.fig.add_subplot(437)
        ga = gaussian_noise(img)
        gauss.imshow(ga,cmap='gray')
        gauss.axis('off')

        gd = self.canvas_lsb.fig.add_subplot(438)
        gauss_dec = LSBDecryptGray(bkp,ga,(128,128),coord)
        gd.imshow(gauss_dec[0],cmap='gray')
        gd.axis('off')



        self.graphscene = QGraphicsScene()
        self.graphscene.addWidget(self.canvas_lsb)
        self.tab_lsb.graphicsView.setScene(self.graphscene)
        self.tab_lsb.graphicsView.show()

    def LoadWaterMark(self):
        filename, _ = QtWidgets.QFileDialog.getOpenFileName(self, "选择水印图片", ".", "Images (*.png *.jpeg *.jpg)")
        self.wm = ReadImg(filename, cv2.IMREAD_GRAYSCALE)
        self.tab_lsb.watermark.setText(filename.split("/")[-1])

    def LoadImage(self):
        filename, _ = QtWidgets.QFileDialog.getOpenFileName(self, "选择图片", ".", "Images (*.png *.jpeg *.jpg)")
        self.tab_lsb.original.setText(filename.split("/")[-1])
        self.img = ReadImg(filename)


if __name__ == "__main__":
    QtCore.QCoreApplication.setAttribute(QtCore.Qt.AA_ShareOpenGLContexts)
    app = QtWidgets.QApplication([])

    widget = MainWindow()
    widget.show()

    sys.exit(app.exec())
