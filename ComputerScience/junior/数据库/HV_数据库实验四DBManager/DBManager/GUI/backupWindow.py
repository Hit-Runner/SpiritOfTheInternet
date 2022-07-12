# 图形界面类
import tkinter  # 使用Tkinter前需要先导入
from tkinter import ttk
from tkinter.filedialog import askdirectory

import traceback


class backupWindow:
    def __init__(self, dbIns):
        # 数据库实例
        self.dbIns = dbIns
        # 字体
        self.customFont = ('SimSun', 11)
        # 窗口
        self.customWindow = tkinter.Toplevel()  # 实例化窗口
        self.customWindow.title("Backup")  # 窗口名称
        self.customWindow.geometry("680x100")  # 窗口大小
        # 变量
        self.pathVar = tkinter.StringVar()  # s sno
        self.pathVar.set("")
        # 容器
        self.mainFrame = tkinter.Frame(self.customWindow)  # 实例化父容器
        self.mainFrame.pack()
        self.topFrame = tkinter.Frame(self.mainFrame)  # 实例化父容器
        self.topFrame.pack(side=tkinter.TOP, fill=tkinter.X)
        self.bottomFrame = tkinter.Frame(self.mainFrame)  # 实例化父容器
        self.bottomFrame.pack(side=tkinter.BOTTOM, fill=tkinter.X)
        # 内容
        self.msgLabel = tkinter.Label(self.topFrame, text="选择备份位置", font=self.customFont)
        self.msgLabel.pack(side=tkinter.LEFT)
        self.msgEntry = tkinter.Entry(self.topFrame, textvariable=self.pathVar, width=60,
                                      state='readonly')
        self.msgEntry.pack(side=tkinter.LEFT)
        self.msgButton = tkinter.Button(self.topFrame, text="...", font=self.customFont, width=4,
                                        height=1, command=self.openDialog)
        self.msgButton.pack(side=tkinter.LEFT)
        self.okButton = tkinter.Button(self.topFrame, text="备份", font=self.customFont, width=10,
                                       height=1, command=self.backupOK)
        self.okButton.pack(side=tkinter.LEFT)
        # 提示框
        self.alertTextbox = tkinter.Text(self.bottomFrame, height=3, font=self.customFont)
        self.alertTextbox.pack(fill=tkinter.X)

    def __del__(self):
        pass

    # 状态报警
    def alert(self, msg):
        self.alertTextbox.delete(1.0, "end")
        self.alertTextbox.insert("1.0", msg)

    def openDialog(self):
        result = askdirectory()
        if result:
            self.pathVar.set(result+"/")
            self.alert("Selected: " + result+"/")
        else:
            self.alert("未选中任何文件夹")

    def backupOK(self):
        path = self.pathVar.get()
        result = self.dbIns.backupCustom(path)
        if result[0]:
            self.alert(result[1])
        else:
            self.alert(result[1])
