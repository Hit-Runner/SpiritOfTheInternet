from time import sleep
import os
from PySide2.QtGui import QIcon, QPixmap, QPicture, QImage
from PySide2.QtWidgets import QApplication, QListWidgetItem
from PySide2.QtUiTools import QUiLoader
from PySide2.QtCore import QFile
from PySide2 import QtCore
from PySide2.QtWidgets import QWidget
import slots
import time
import json


class StartUp(QtCore.QObject):
    friendList = []
    chat_ = {}

    def __init__(self):
        super().__init__()
        self.username = ''
        qfile_ui = QFile("E:\\Py workshop\\OICQ\\client\\UI\\login.ui")
        qfile_ui.open(QFile.ReadOnly)
        qfile_ui.close()
        self.ui = QUiLoader().load(qfile_ui)
        self.ui.setWindowFlags(QtCore.Qt.FramelessWindowHint)
        self.ui.user.setScaledContents(True)
        self.ui.pass_pic.setScaledContents(True)
        self.ui.user.setPixmap(QPixmap('.\\static\\user.png'))
        self.ui.pass_pic.setPixmap(QPixmap('.\\static\\password.png'))
        self.ui.login.setStyleSheet('QPushButton {background-color: #1296DB; border: none; color: #FFFFFF}')
        self.ui.regist.setStyleSheet('QPushButton {color: #8A8A8A}')
        self.ui.useraccount.setStyleSheet('QLineEdit {background-color: #1296DB; border-width: 1 }')
        self.ui.show()
        self.ui.login.clicked.connect(self.userLogin)
        self.ui.regist.clicked.connect(self.showReg)
        self.ui.closebu.clicked.connect(self.stop)

        qfile_main = QFile("E:\\Py workshop\\OICQ\client\\UI\\mainwindow.ui")
        qfile_main.open(QFile.ReadOnly)
        qfile_main.close()
        self.ui_main = QUiLoader().load(qfile_main)
        self.ui_main.addFriend.clicked.connect(self.addFriend)
        self.ui_main.profile_photo.setPixmap(QPixmap('.\\static\\default.png'))
        self.ui_main.profile_photo.setScaledContents(True)
        self.ui_main.listWidget.itemClicked.connect(self.chat)
        self.ui_main.send.clicked.connect(self.sendmessage)
        self.ui_main.setWindowFlags(QtCore.Qt.FramelessWindowHint)
        self.ui_main.closeB.clicked.connect(self.logout)

        ui_file = QFile("E:\\Py workshop\\OICQ\client\\UI\\searchNot.ui")
        ui_file.open(QFile.ReadOnly)
        ui_file.close()
        self.ui_notice = QUiLoader().load(ui_file)
        self.ui_notice.search.clicked.connect(self.search)

        reg_file = QFile("E:\\Py workshop\\OICQ\client\\UI\\Register.ui")
        reg_file.open(QFile.ReadOnly)
        reg_file.close()
        self.ui_reg = QUiLoader().load(reg_file)
        self.ui_reg.submit.clicked.connect(self.userReg)
        self.ui_reg.passconf.editingFinished.connect(self.checkPass)
        self.ui_reg.passconf_tip.setScaledContents(True)

    def userLogin(self):
        username = self.ui.useraccount.text()
        self.username = username
        password = self.ui.password.text()
        msg = slots.UserLogin(username, password)
        print(msg)
        self.ui.notice.setText(msg)
        sleep(2)
        self.ui.notice.setText("")
        if msg == 'ok':

            ifexist = os.path.exists(str(username))
            if not ifexist:
                os.mkdir(str(username))
            msg = slots.ReceiveMessage(self.username)
            print(msg)
            for i in msg:

                mea = json.loads(i)
                print(mea)
                slots.StoreChat(username, mea['sender'], i)
            self.friendList = slots.GetStatus(self.username)
            print(self.friendList)
            for user in self.friendList:
                self.ui_main.listWidget.addItem(user[0])
            self.ui_main.show()
            self.ui.close()

    def addFriend(self):
        self.ui_notice.show()
        self.ui_notice.exec_()

    def search(self):
        target = self.ui_notice.searchBox.text()
        msg = slots.AddFriend(self.username, target)
        self.ui_notice.resultNot.setText(msg)
        sleep(2)
        self.ui_notice.resultNot.setText("")

    def showReg(self):
        self.ui_reg.show()

    def userReg(self):
        msg = slots.UserReg(self.ui_reg.username.text(), self.ui_reg.password.text(), self.ui_reg.phone.text())
        if msg['code'] == 0:
            self.ui_reg.notice.setText(msg['msg'] + ',your id is:' + str(msg['id']))

    def checkPass(self):
        if self.ui_reg.password.text() != self.ui_reg.passconf.text():
            self.ui_reg.submit.setEnabled(False)
            self.ui_reg.passconf_tip.setPixmap(QPixmap('E:\\Py workshop\\OICQ\client\\static\\warning.png'))
        else:
            self.ui_reg.submit.setEnabled(True)
            self.ui_reg.passconf_tip.setPixmap(QPixmap('E:\\Py workshop\\OICQ\client\\static\\ok.png'))

    def chat(self):
        item = self.ui_main.listWidget.currentItem()
        self.ui_main.othername.setText(item.text())
        self.ui_main.chatview.clear()
        for i in self.friendList:
            if self.ui_main.othername.text() == i[0]:
                receive = i[1]
        msg = slots.loadChat(self.username, receive)
        for i in msg:
            j = json.loads(i)
            self.ui_main.chatview.addItem(item.text()+":"+j['message']+'['+j['time']+']')

    def sendmessage(self):
        receive = ''
        addr = ''
        message = self.ui_main.sendbox.toPlainText()
        for i in self.friendList:
            if self.ui_main.othername.text() == i[0]:
                receive = i[1]
                addr = i[2]
        code, me = slots.SendMessage(self.username, receive, addr, message)
        if code == 0:
            self.ui_main.chatview.addItem(
                '我：' + message + '[' + time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()) + ']')
            slots.StoreChat(self.username, receive, me)
            self.ui_main.sendbox.clear()
        else:
            self.ui_main.chatview.addItem('发送失败' + me)

    def logout(self):
        slots.Logout(self.username)
        exit()

    def stop(self):
        exit()


app = QApplication([])
x = StartUp()
app.exec_()
