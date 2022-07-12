# 图形界面类
import tkinter  # 使用Tkinter前需要先导入
from tkinter import ttk
import traceback


# 插入列表
def insertToTable(answerList, info):
    for data in info:
        answerList.insert("", tkinter.END, values=data)


# 清除列表
def clearTable(answerList):
    obj = answerList.get_children()  # 获取所有对象
    for o in obj:
        answerList.delete(o)  # 删除对象


class deleteWindow:
    def __init__(self, dbIns):
        # 数据库实例
        self.dbIns = dbIns
        # 中间变量
        self.currentRow = None  # 当前选中行
        self.currentSClass = None  # 当前行班级
        self.currentSSno = None  # 当前行学号
        self.currentCCno = None  # 当前行课序号
        # 字体
        self.customFont = ('SimSun', 11)
        # 窗口
        self.customWindow = tkinter.Toplevel()  # 实例化窗口
        self.customWindow.title("Delete")  # 窗口名称
        self.customWindow.geometry("990x630")  # 窗口大小
        # 变量
        # 容器
        self.mainFrame = tkinter.Frame(self.customWindow)  # 实例化父容器
        self.mainFrame.pack()
        self.topFrame = tkinter.Frame(self.mainFrame)  # 实例化s父容器
        self.topFrame.pack(side=tkinter.TOP, fill=tkinter.X)
        self.centerFrame = tkinter.Frame(self.mainFrame)  # 实例化c sc父容器
        self.centerFrame.pack(side=tkinter.TOP, fill=tkinter.X)
        self.bottomFrame = tkinter.Frame(self.mainFrame)  # 实例化sc父容器
        self.bottomFrame.pack(side=tkinter.BOTTOM, fill=tkinter.X)
        # s表
        self.sFrame = tkinter.ttk.LabelFrame(self.topFrame, text="s表", padding=(5, 5, 5, 5))  # 显示列表容器
        self.sFrame.pack(side=tkinter.BOTTOM, fill=tkinter.X)  # 相对布局
        self.sButton = tkinter.Button(self.sFrame, text="删除", font=self.customFont, width=14,
                                      height=1, command=self.delS)
        self.sButton.grid(row=0, column=0, sticky=tkinter.W)
        columns = ['sclass', 'sno', 'sname', 'ssex', 'sage', 'sdept']
        self.sList = ttk.Treeview(
            master=self.sFrame,
            height=10,
            columns=columns,
            show="headings"
        )
        self.sList.heading(column='sclass', text="班级", anchor="w")
        self.sList.heading(column='sno', text="学号", anchor="w")
        self.sList.heading(column='sname', text="姓名", anchor="w")
        self.sList.heading(column='ssex', text="性别", anchor="w")
        self.sList.heading(column='sage', text="年龄", anchor="w")
        self.sList.heading(column='sdept', text="系", anchor="w")
        self.sList.column('sclass', width=150, minwidth=100, anchor='s')
        self.sList.column('sno', width=150, minwidth=100, anchor='s')
        self.sList.column('sname', width=200, minwidth=100, anchor='s')
        self.sList.column('ssex', width=100, minwidth=40, anchor='s')
        self.sList.column('sage', width=100, minwidth=40, anchor='s')
        self.sList.column('sdept', width=250, minwidth=100, anchor='s')
        self.sList.grid(row=1, column=0)
        # c表
        self.cFrame = tkinter.ttk.LabelFrame(self.centerFrame, text="c表", padding=(5, 5, 5, 5))  # 显示列表容器
        self.cFrame.pack(side=tkinter.LEFT)  # 相对布局
        self.cButton = tkinter.Button(self.cFrame, text="删除", font=self.customFont, width=14,
                                      height=1, command=self.delC)
        self.cButton.grid(row=0, column=0, sticky=tkinter.W)
        columns = ['cno', 'cname', 'cpno', 'ccredit']
        self.cList = ttk.Treeview(
            master=self.cFrame,
            height=10,
            columns=columns,
            show="headings"
        )
        self.cList.heading(column='cno', text="课序号", anchor="w")
        self.cList.heading(column='cname', text="课程", anchor="w")
        self.cList.heading(column='cpno', text="先修课", anchor="w")
        self.cList.heading(column='ccredit', text="学分", anchor="w")
        self.cList.column('cno', width=110, minwidth=100, anchor='s')
        self.cList.column('cname', width=140, minwidth=100, anchor='s')
        self.cList.column('cpno', width=110, minwidth=100, anchor='s')
        self.cList.column('ccredit', width=80, minwidth=40, anchor='s')
        self.cList.grid(row=1, column=0)
        # sc表
        self.scFrame = tkinter.ttk.LabelFrame(self.centerFrame, text="sc表", padding=(5, 5, 5, 5))  # 显示列表容器
        self.scFrame.pack(side=tkinter.RIGHT)  # 相对布局
        self.scButton = tkinter.Button(self.scFrame, text="删除", font=self.customFont, width=14,
                                       height=1, command=self.delSC)
        self.scButton.grid(row=0, column=0, sticky=tkinter.W)
        columns = ['sclass', 'sno', 'cno', 'grade']
        self.scList = ttk.Treeview(
            master=self.scFrame,
            height=10,
            columns=columns,
            show="headings"
        )
        self.scList.heading(column='sclass', text="班级", anchor="w")
        self.scList.heading(column='sno', text="学号", anchor="w")
        self.scList.heading(column='cno', text="课序号", anchor="w")
        self.scList.heading(column='grade', text="学分", anchor="w")
        self.scList.column('sclass', width=130, minwidth=100, anchor='s')
        self.scList.column('sno', width=130, minwidth=100, anchor='s')
        self.scList.column('cno', width=130, minwidth=100, anchor='s')
        self.scList.column('grade', width=100, minwidth=40, anchor='s')
        self.scList.grid(row=1, column=0)
        # 提示框
        self.alertTextbox = tkinter.Text(self.bottomFrame, height=3, font=self.customFont)
        self.alertTextbox.pack(fill=tkinter.X)
        # 查询插入所有数据
        self.initData()
        # 事件
        self.sList.bind("<ButtonRelease-1>", self.tableClickS)
        self.cList.bind("<ButtonRelease-1>", self.tableClickC)
        self.scList.bind("<ButtonRelease-1>", self.tableClickSC)
        # 打开窗口
        self.customWindow.mainloop()

    def __del__(self):
        pass

    # 状态报警
    def alert(self, msg):
        self.alertTextbox.delete(1.0, "end")
        self.alertTextbox.insert("1.0", msg)

    # s表点击事件
    def tableClickS(self, event):
        # print(event)
        self.alert("监听到点击事件\n" + str(event))
        item = self.sList.selection()
        if item:
            # print(item)
            # print(self.sList.item(item[0], "values"))
            itemValue = self.sList.item(item[0], "values")
            self.currentRow = itemValue
            self.currentSClass = itemValue[0]
            self.currentSSno = itemValue[1]
            self.alert("sclass:" + self.currentSClass + " sno:" + self.currentSSno)
        else:
            self.alert("点击事件错误，未获取到记录")

    # c表点击事件
    def tableClickC(self, event):
        # print(event)
        self.alert("监听到点击事件\n" + str(event))
        item = self.cList.selection()
        if item:
            itemValue = self.cList.item(item[0], "values")
            self.currentRow = itemValue
            self.currentCCno = itemValue[0]
            self.alert("cno:" + self.currentCCno)
        else:
            self.alert("点击事件错误，未获取到记录")

    # c表点击事件
    def tableClickSC(self, event):
        # print(event)
        self.alert("监听到点击事件\n" + str(event))
        item = self.scList.selection()
        if item:
            itemValue = self.scList.item(item[0], "values")
            self.currentRow = itemValue
            self.currentSClass = itemValue[0]
            self.currentSSno = itemValue[1]
            self.currentCCno = itemValue[2]
            self.alert("sclass:" + self.currentSClass + " sno:" + self.currentSSno + "cno:" + self.currentCCno)
        else:
            self.alert("点击事件错误，未获取到记录")

    # 数据刷新
    def freshS(self):
        self.dbIns.openCursor()  # 打开游标
        queryset = self.dbIns.searchCustom(
            "*",
            "s",
            None)
        # print(queryset)
        clearTable(self.sList)
        insertToTable(self.sList, queryset)
        self.dbIns.closeCursor()  # 关闭游标

    def freshC(self):
        self.dbIns.openCursor()  # 打开游标
        queryset = self.dbIns.searchCustom(
            "*",
            "c",
            None)
        # print(queryset)
        clearTable(self.cList)
        insertToTable(self.cList, queryset)
        self.dbIns.closeCursor()  # 关闭游标

    def freshSC(self):
        self.dbIns.openCursor()  # 打开游标
        queryset = self.dbIns.searchCustom(
            "*",
            "sc",
            None)
        # print(queryset)
        clearTable(self.scList)
        insertToTable(self.scList, queryset)
        self.dbIns.closeCursor()  # 关闭游标

    # 数据准备
    def initData(self):
        try:
            if self.dbIns is None:
                self.alert("数据库未连接")
            else:
                # s
                self.freshS()
                # c
                self.freshC()
                # sc
                self.freshSC()
                self.alert("查询s c sc成功")
        except Exception as e:
            print(e)
            traceback.print_exc()
            self.alert(e)

    def delS(self):
        try:
            self.dbIns.openCursor()  # 打开游标
            result = self.dbIns.deleteCustom(
                "s",
                ["sno=" + self.currentSSno, "sclass=" + self.currentSClass])
            if result is True:
                print(result)
                self.alert("删除学生成功")
                self.freshS()
                self.currentRow = None  # 当前选中行
                self.currentSClass = None  # 当前行班级
                self.currentSSno = None  # 当前行学号
                self.currentCCno = None  # 当前行课序号
            else:
                self.alert(result)
        except Exception as e:
            print(e)
            traceback.print_exc()
            self.alert(e)
            self.currentRow = None  # 当前选中行
            self.currentSClass = None  # 当前行班级
            self.currentSSno = None  # 当前行学号
            self.currentCCno = None  # 当前行课序号

    def delC(self):
        try:
            self.dbIns.openCursor()  # 打开游标
            result = self.dbIns.deleteCustom(
                "c",
                ["cno=" + self.currentCCno])
            if result is True:
                print(result)
                self.alert("删除课程成功")
                self.freshC()
                self.currentRow = None  # 当前选中行
                self.currentSClass = None  # 当前行班级
                self.currentSSno = None  # 当前行学号
                self.currentCCno = None  # 当前行课序号
            else:
                self.alert(result)
        except Exception as e:
            print(e)
            traceback.print_exc()
            self.alert(e)
            self.currentRow = None  # 当前选中行
            self.currentSClass = None  # 当前行班级
            self.currentSSno = None  # 当前行学号
            self.currentCCno = None  # 当前行课序号

    def delSC(self):
        try:
            self.dbIns.openCursor()  # 打开游标
            result = self.dbIns.deleteCustom(
                "sc",
                ["sno=" + self.currentSSno, "sclass=" + self.currentSClass, "cno=" + self.currentCCno])
            if result is True:
                print(result)
                self.alert("删除选课成功")
                self.freshSC()
                self.currentRow = None  # 当前选中行
                self.currentSClass = None  # 当前行班级
                self.currentSSno = None  # 当前行学号
                self.currentCCno = None  # 当前行课序号
            else:
                self.alert(result)
        except Exception as e:
            print(e)
            traceback.print_exc()
            self.alert(e)
            self.currentRow = None  # 当前选中行
            self.currentSClass = None  # 当前行班级
            self.currentSSno = None  # 当前行学号
            self.currentCCno = None  # 当前行课序号
