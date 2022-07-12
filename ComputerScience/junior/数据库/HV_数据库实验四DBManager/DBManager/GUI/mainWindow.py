# 图形界面类
import tkinter  # 使用Tkinter前需要先导入
from tkinter import ttk
import traceback

from GUI.backupWindow import backupWindow
from GUI.deleteWindow import deleteWindow
from GUI.insertWindow import insertWindow
from GUI.updateWindow import updateWindow
from emSQL.DBBase import DBBase


class mainWindow:
    def __init__(self):
        # 数据库
        self.dbIns = None  # 数据库查询类实例
        # 中间变量
        self.currentRow = None  # 当前选中行
        self.currentSClass = None  # 当前行班级
        self.currentSSno = None  # 当前行学号
        # 字体
        self.customFont = ('SimSun', 11)
        # 窗口
        self.customWindow = tkinter.Tk()  # 实例化窗口
        self.customWindow.title("Student Course Manager")  # 窗口名称
        self.customWindow.geometry("990x480")  # 窗口大小
        # 变量
        self.hostVar = tkinter.StringVar()  # host
        self.hostVar.set("")
        self.portVar = tkinter.StringVar()  # port
        self.portVar.set("")
        self.userVar = tkinter.StringVar()  # user
        self.userVar.set("")
        self.passwdVar = tkinter.StringVar()  # passwd
        self.passwdVar.set("")
        self.dbNameVar = tkinter.StringVar()  # dbName
        self.dbNameVar.set("")
        self.snoVar = tkinter.StringVar()  # sno
        self.snoVar.set("")
        self.sclassVar = tkinter.StringVar()  # sclass
        self.sclassVar.set("")
        # 容器
        self.mainFrame = tkinter.Frame(self.customWindow)  # 实例化父容器
        self.mainFrame.pack()
        self.topFrame = tkinter.Frame(self.mainFrame)  # 实例化操作父容器
        self.topFrame.pack(side=tkinter.TOP, fill=tkinter.X)
        self.centerFrame = tkinter.Frame(self.mainFrame)  # 实例化提示框父容器
        self.centerFrame.pack(side=tkinter.TOP, fill=tkinter.X)
        self.bottomFrame = tkinter.Frame(self.mainFrame)  # 实例化表格父容器
        self.bottomFrame.pack(side=tkinter.BOTTOM, fill=tkinter.X)
        # 数据库连接
        self.connectFrame = tkinter.ttk.LabelFrame(self.topFrame, text="数据库连接", padding=(5, 5, 5, 5))  # 数据库连接容器
        self.connectFrame.pack(side=tkinter.LEFT, fill=tkinter.X)
        self.hostLabel = tkinter.Label(self.connectFrame, text="地址", font=self.customFont)
        self.hostLabel.grid(row=0, column=0, sticky=tkinter.E)  # 表格布局
        self.hostEntry = tkinter.Entry(self.connectFrame, textvariable=self.hostVar, width=20)
        self.hostEntry.grid(row=0, column=1)  # 表格布局
        self.portLabel = tkinter.Label(self.connectFrame, text="端口", font=self.customFont)
        self.portLabel.grid(row=0, column=2, sticky=tkinter.E)  # 表格布局
        self.portEntry = tkinter.Entry(self.connectFrame, textvariable=self.portVar, width=20)
        self.portEntry.grid(row=0, column=3)  # 表格布局
        self.userLabel = tkinter.Label(self.connectFrame, text="用户", font=self.customFont)
        self.userLabel.grid(row=1, column=0, sticky=tkinter.E)  # 表格布局
        self.userEntry = tkinter.Entry(self.connectFrame, textvariable=self.userVar, width=20)
        self.userEntry.grid(row=1, column=1)  # 表格布局
        self.passwdLabel = tkinter.Label(self.connectFrame, text="密码", font=self.customFont)
        self.passwdLabel.grid(row=1, column=2, sticky=tkinter.E)  # 表格布局
        self.passwdEntry = tkinter.Entry(self.connectFrame, textvariable=self.passwdVar, width=20)
        self.passwdEntry.grid(row=1, column=3)  # 表格布局
        self.dbNameLabel = tkinter.Label(self.connectFrame, text="数据库名", font=self.customFont)
        self.dbNameLabel.grid(row=2, column=0, sticky=tkinter.E)  # 表格布局
        self.dbNameEntry = tkinter.Entry(self.connectFrame, textvariable=self.dbNameVar, width=20)
        self.dbNameEntry.grid(row=2, column=1)  # 表格布局
        self.connectButtonFrame = tkinter.Frame(self.connectFrame)  # 连接按钮布局
        self.connectButtonFrame.grid(row=2, column=3, columnspan=2)
        self.connectButton = tkinter.Button(self.connectButtonFrame, text="打开连接", font=self.customFont, width=8,
                                            height=1, command=self.connectDatabase)
        self.connectButton.grid(row=0, column=1)  # 表格布局
        self.disconnectButton = tkinter.Button(self.connectButtonFrame, text="关闭连接", font=self.customFont, width=8,
                                               height=1, command=self.disconnectDatabase)
        self.disconnectButton.grid(row=0, column=2)  # 表格布局
        # 数据操作框
        self.operationFrame = tkinter.ttk.LabelFrame(self.topFrame, text="数据库操作", padding=(10, 13, 10, 13))  # 数据库操作容器
        self.operationFrame.pack(side=tkinter.LEFT, fill=tkinter.X)
        self.searchFrame = tkinter.Frame(self.operationFrame)  # 查询布局
        self.searchFrame.grid(row=0, column=0, columnspan=5)
        self.sclassLabel = tkinter.Label(self.searchFrame, text="输入班级", font=self.customFont)
        self.sclassLabel.grid(row=0, column=0)  # 表格布局
        self.sclassEntry = tkinter.Entry(self.searchFrame, textvariable=self.sclassVar, width=22)
        self.sclassEntry.grid(row=0, column=1)
        self.snoLabel = tkinter.Label(self.searchFrame, text="输入学号", font=self.customFont)
        self.snoLabel.grid(row=0, column=2)  # 表格布局
        self.snoEntry = tkinter.Entry(self.searchFrame, textvariable=self.snoVar, width=22)
        self.snoEntry.grid(row=0, column=3)
        self.searchButton = tkinter.Button(self.searchFrame, text="查询", font=self.customFont, width=8, height=1,
                                           command=self.searchSno)
        self.searchButton.grid(row=0, column=4)  # 表格布局

        self.insertButton = tkinter.Button(self.operationFrame, text="插入", font=self.customFont, width=8, height=1,
                                           command=self.insert)
        self.insertButton.grid(row=1, column=0)  # 表格布局
        self.updateButton = tkinter.Button(self.operationFrame, text="修改", font=self.customFont, width=8, height=1,
                                           command=self.update)
        self.updateButton.grid(row=1, column=1)  # 表格布局
        self.deleteButton = tkinter.Button(self.operationFrame, text="删除", font=self.customFont, width=8, height=1,
                                           command=self.delete)
        self.deleteButton.grid(row=1, column=2)  # 表格布局
        self.backupButton = tkinter.Button(self.operationFrame, text="备份", font=self.customFont, width=8, height=1,
                                           command=self.backup)
        self.backupButton.grid(row=1, column=3)  # 表格布局
        self.previewButton = tkinter.Button(self.operationFrame, text="预览", font=self.customFont, width=8, height=1,
                                            command=self.preview)
        self.previewButton.grid(row=1, column=4)  # 表格布局
        # 提示框
        self.alertTextbox = tkinter.Text(self.centerFrame, height=3, font=self.customFont)
        self.alertTextbox.pack(fill=tkinter.X)
        # 查询结果列表
        self.answerFrame = tkinter.ttk.LabelFrame(self.bottomFrame, text="结果显示列表", padding=(5, 5, 5, 5))  # 显示列表容器
        self.answerFrame.pack(side=tkinter.BOTTOM, fill=tkinter.X)  # 相对布局
        columns = ['sclass', 'sno', 'sname', 'ssex', 'sage', 'sdept', 'cname', 'grade']
        self.answerList = ttk.Treeview(
            master=self.answerFrame,
            height=13,
            columns=columns,
            show="headings"
        )
        self.answerList.heading(column='sclass', text="班级", anchor="w")
        self.answerList.heading(column='sno', text="学号", anchor="w")
        self.answerList.heading(column='sname', text="姓名", anchor="w")
        self.answerList.heading(column='ssex', text="性别", anchor="w")
        self.answerList.heading(column='sage', text="年龄", anchor="w")
        self.answerList.heading(column='sdept', text="系", anchor="w")
        self.answerList.heading(column='cname', text="课程", anchor="w")
        self.answerList.heading(column='grade', text="成绩", anchor="w")
        self.answerList.column('sclass', width=100, minwidth=100, anchor='s')
        self.answerList.column('sno', width=150, minwidth=100, anchor='s')
        self.answerList.column('sname', width=100, minwidth=100, anchor='s')
        self.answerList.column('ssex', width=40, minwidth=40, anchor='s')
        self.answerList.column('sage', width=40, minwidth=40, anchor='s')
        self.answerList.column('sdept', width=200, minwidth=100, anchor='s')
        self.answerList.column('cname', width=100, minwidth=100, anchor='s')
        self.answerList.column('grade', width=40, minwidth=40, anchor='s')
        self.answerList.pack(side=tkinter.BOTTOM, fill=tkinter.X)
        # 事件
        self.answerList.bind("<ButtonRelease-1>", self.tableClick)
        # 打开窗口
        self.customWindow.mainloop()

    # 状态报警
    def alert(self, msg):
        self.alertTextbox.delete(1.0, "end")
        self.alertTextbox.insert("1.0", msg)

    # 插入列表
    def insertToTable(self, info):
        for data in info:
            self.answerList.insert("", tkinter.END, values=data)

    # 清除列表
    def clearTable(self):
        obj = self.answerList.get_children()  # 获取所有对象
        for o in obj:
            self.answerList.delete(o)  # 删除对象

    # 表点击事件
    def tableClick(self, event):
        # print(event)
        self.alert("监听到点击事件\n" + str(event))
        item = self.answerList.selection()
        if item:
            # print(item)
            print(self.answerList.item(item[0], "values"))
            itemValue = self.answerList.item(item[0], "values")
            self.currentRow = itemValue
            self.currentSClass = itemValue[0]
            self.currentSSno = itemValue[1]
            self.alert("sclass:" + self.currentSClass + " sno:" + self.currentSSno)
        else:
            self.alert("点击事件错误，未获取到记录")

    # 连接数据库
    def connectDatabase(self):
        # 获取输入
        host = self.hostVar.get()
        port = self.portVar.get()
        user = self.userVar.get()
        passwd = self.passwdVar.get()
        dbName = self.dbNameVar.get()
        # self.dbIns = DBBase("localhost", int(3306), "root", "", "st")
        if host == "":
            self.alert("请输入数据库地址")
        elif user == "":
            self.alert("请输入用户名")
        elif dbName == "":
            self.alert("请输入数据库名")
        elif port == "":
            self.alert("请输入端口")
        else:
            self.dbIns = DBBase(host, int(port), user, passwd, dbName)
            self.alert(self.dbIns.connectDB())

    # 断开数据库
    def disconnectDatabase(self):
        if self.dbIns is None:
            self.alert("数据库未连接")
        else:
            self.alert(self.dbIns.closeDB())
            self.dbIns = None

    def searchSno(self):
        # 判断输入学号
        try:
            if self.dbIns is None:
                self.alert("数据库未连接")
            else:
                sno = self.snoVar.get()
                sclass = self.sclassVar.get()
                if sno == "":
                    self.alert("请输入学号")
                elif sclass == "":
                    self.alert("请输入班级")
                else:
                    self.dbIns.openCursor()  # 打开游标
                    queryset = self.dbIns.searchCustom(
                        ["s.sclass", "s.sno", "s.sname", "s.ssex", "s.sage", "s.sdept", "c.cname", "sc.grade"],
                        "s LEFT OUTER JOIN (sc JOIN c ON sc.cno=c.cno) "
                        "ON (s.sclass=sc.sclass AND s.sno=sc.sno)",
                        ["s.sno=" + sno, "s.sclass=" + sclass])
                    # print(queryset)
                    self.clearTable()
                    self.insertToTable(queryset)
                    self.alert("查询成功")
        except Exception as e:
            print(e)
            traceback.print_exc()
            self.alert(e)

    def insert(self):
        try:
            if self.dbIns is None:
                self.alert("数据库未连接")
            else:
                insertWindow(self.dbIns)
        except Exception as e:
            print(e)
            traceback.print_exc()
            self.alert(e)

    def update(self):
        try:
            if self.dbIns is None:
                self.alert("数据库未连接")
            else:
                updateWindow(self.dbIns)
        except Exception as e:
            print(e)
            traceback.print_exc()
            self.alert(e)

    def delete(self):
        try:
            if self.dbIns is None:
                self.alert("数据库未连接")
            else:
                deleteWindow(self.dbIns)
        except Exception as e:
            print(e)
            traceback.print_exc()
            self.alert(e)

    def backup(self):
        try:
            if self.dbIns is None:
                self.alert("数据库未连接")
            else:
                backupWindow(self.dbIns)
        except Exception as e:
            print(e)
            traceback.print_exc()
            self.alert(e)

    def preview(self):
        try:
            if self.dbIns is None:
                self.alert("数据库未连接")
            else:
                self.dbIns.openCursor()  # 打开游标
                queryset = self.dbIns.searchCustom(
                    "*",
                    "s LEFT OUTER JOIN (sc JOIN c ON sc.cno=c.cno) "
                    "ON (s.sclass=sc.sclass AND s.sno=sc.sno)",
                    None)
                # print(queryset)
                self.clearTable()
                self.insertToTable(queryset)
                self.alert("查询成功")
        except Exception as e:
            print(e)
            traceback.print_exc()
            self.alert(e)
