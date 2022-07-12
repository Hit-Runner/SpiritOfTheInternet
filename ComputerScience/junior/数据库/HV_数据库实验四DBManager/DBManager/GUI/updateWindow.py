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


class updateWindow:
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
        self.customWindow.title("Update")  # 窗口名称
        self.customWindow.geometry("990x630")  # 窗口大小
        # 变量
        # s
        self.s_snoVar = tkinter.StringVar()  # s sno
        self.s_snoVar.set("")
        self.s_sclassVar = tkinter.StringVar()  # s sclass
        self.s_sclassVar.set("")
        self.s_snameVar = tkinter.StringVar()  # s sname
        self.s_snameVar.set("")
        self.s_ssexVar = tkinter.StringVar()  # s ssex
        self.s_ssexVar.set("")
        self.s_sageVar = tkinter.StringVar()  # s sage
        self.s_sageVar.set("")
        self.s_sdeptVar = tkinter.StringVar()  # s sdept
        self.s_sdeptVar.set("")
        # c
        self.c_cnoVar = tkinter.StringVar()  # c_cno
        self.c_cnoVar.set("")
        self.c_cnameVar = tkinter.StringVar()  # c_cname
        self.c_cnameVar.set("")
        self.c_cpnoVar = tkinter.StringVar()  # c_cpno
        self.c_cpnoVar.set("")
        self.c_ccreditVar = tkinter.StringVar()  # c_ccredit
        self.c_ccreditVar.set("")
        # sc
        self.sc_snoVar = tkinter.StringVar()  # sc sno
        self.sc_snoVar.set("")
        self.sc_sclassVar = tkinter.StringVar()  # sc sclass
        self.sc_sclassVar.set("")
        self.sc_cnoVar = tkinter.StringVar()  # sc_cno
        self.sc_cnoVar.set("")
        self.sc_gradeVar = tkinter.StringVar()  # sc_grade
        self.sc_gradeVar.set("")
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
        self.sOperationFrame = tkinter.Frame(self.sFrame)
        self.sOperationFrame.grid(row=0, column=0, sticky=tkinter.W)

        self.s_sclassLabel = tkinter.Label(self.sOperationFrame, text="班级", font=self.customFont)
        self.s_sclassLabel.pack(side=tkinter.LEFT)
        self.s_sclassEntry = tkinter.Entry(self.sOperationFrame, textvariable=self.s_sclassVar, width=10,
                                           state='readonly')
        self.s_sclassEntry.pack(side=tkinter.LEFT)
        self.s_snoLabel = tkinter.Label(self.sOperationFrame, text="学号", font=self.customFont)
        self.s_snoLabel.pack(side=tkinter.LEFT)
        self.s_snoEntry = tkinter.Entry(self.sOperationFrame, textvariable=self.s_snoVar, width=10, state='readonly')
        self.s_snoEntry.pack(side=tkinter.LEFT)
        self.s_snameLabel = tkinter.Label(self.sOperationFrame, text="姓名", font=self.customFont)
        self.s_snameLabel.pack(side=tkinter.LEFT)
        self.s_snameEntry = tkinter.Entry(self.sOperationFrame, textvariable=self.s_snameVar, width=10)
        self.s_snameEntry.pack(side=tkinter.LEFT)
        self.s_ssexLabel = tkinter.Label(self.sOperationFrame, text="性别", font=self.customFont)
        self.s_ssexLabel.pack(side=tkinter.LEFT)
        self.s_ssexEntry = tkinter.Entry(self.sOperationFrame, textvariable=self.s_ssexVar, width=10)
        self.s_ssexEntry.pack(side=tkinter.LEFT)
        self.s_sageLabel = tkinter.Label(self.sOperationFrame, text="年龄", font=self.customFont)
        self.s_sageLabel.pack(side=tkinter.LEFT)
        self.s_sageEntry = tkinter.Entry(self.sOperationFrame, textvariable=self.s_sageVar, width=10)
        self.s_sageEntry.pack(side=tkinter.LEFT)
        self.s_sdeptLabel = tkinter.Label(self.sOperationFrame, text="系", font=self.customFont)
        self.s_sdeptLabel.pack(side=tkinter.LEFT)
        self.s_sdeptEntry = tkinter.Entry(self.sOperationFrame, textvariable=self.s_sdeptVar, width=10)
        self.s_sdeptEntry.pack(side=tkinter.LEFT)
        self.sButton = tkinter.Button(self.sOperationFrame, text="更新", font=self.customFont, width=8,
                                      height=1, command=self.updtS)
        self.sButton.pack(side=tkinter.LEFT)

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
        self.cOperationFrame = tkinter.Frame(self.cFrame)
        self.cOperationFrame.grid(row=0, column=0, sticky=tkinter.W)

        self.c_cnoLabel = tkinter.Label(self.cOperationFrame, text="课序号", font=self.customFont)
        self.c_cnoLabel.pack(side=tkinter.LEFT)
        self.c_cnoEntry = tkinter.Entry(self.cOperationFrame, textvariable=self.c_cnoVar, width=5, state='readonly')
        self.c_cnoEntry.pack(side=tkinter.LEFT)
        self.c_cnameLabel = tkinter.Label(self.cOperationFrame, text="课程", font=self.customFont)
        self.c_cnameLabel.pack(side=tkinter.LEFT)
        self.c_cnameEntry = tkinter.Entry(self.cOperationFrame, textvariable=self.c_cnameVar, width=14)
        self.c_cnameEntry.pack(side=tkinter.LEFT)
        self.c_cpnoLabel = tkinter.Label(self.cOperationFrame, text="先修课", font=self.customFont)
        self.c_cpnoLabel.pack(side=tkinter.LEFT)
        self.c_cpnoEntry = tkinter.Entry(self.cOperationFrame, textvariable=self.c_cpnoVar, width=5)
        self.c_cpnoEntry.pack(side=tkinter.LEFT)
        self.c_ccreditLabel = tkinter.Label(self.cOperationFrame, text="学分", font=self.customFont)
        self.c_ccreditLabel.pack(side=tkinter.LEFT)
        self.c_ccreditEntry = tkinter.Entry(self.cOperationFrame, textvariable=self.c_ccreditVar, width=5)
        self.c_ccreditEntry.pack(side=tkinter.LEFT)
        self.cButton = tkinter.Button(self.cOperationFrame, text="更新", font=self.customFont, width=5,
                                      height=1, command=self.updtC)
        self.cButton.pack(side=tkinter.LEFT)

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
        self.scOperationFrame = tkinter.Frame(self.scFrame)
        self.scOperationFrame.grid(row=0, column=0, sticky=tkinter.W)

        self.sc_sclassLabel = tkinter.Label(self.scOperationFrame, text="班级", font=self.customFont)
        self.sc_sclassLabel.pack(side=tkinter.LEFT)
        self.sc_sclassEntry = tkinter.Entry(self.scOperationFrame, textvariable=self.sc_sclassVar, width=8,
                                            state='readonly')
        self.sc_sclassEntry.pack(side=tkinter.LEFT)
        self.sc_snoLabel = tkinter.Label(self.scOperationFrame, text="学号", font=self.customFont)
        self.sc_snoLabel.pack(side=tkinter.LEFT)
        self.sc_snoEntry = tkinter.Entry(self.scOperationFrame, textvariable=self.sc_snoVar, width=8, state='readonly')
        self.sc_snoEntry.pack(side=tkinter.LEFT)
        self.sc_cnoLabel = tkinter.Label(self.scOperationFrame, text="课序号", font=self.customFont)
        self.sc_cnoLabel.pack(side=tkinter.LEFT)
        self.sc_cnoEntry = tkinter.Entry(self.scOperationFrame, textvariable=self.sc_cnoVar, width=8, state='readonly')
        self.sc_cnoEntry.pack(side=tkinter.LEFT)
        self.sc_gradeLabel = tkinter.Label(self.scOperationFrame, text="成绩", font=self.customFont)
        self.sc_gradeLabel.pack(side=tkinter.LEFT)
        self.sc_gradeEntry = tkinter.Entry(self.scOperationFrame, textvariable=self.sc_gradeVar, width=8)
        self.sc_gradeEntry.pack(side=tkinter.LEFT)
        self.scButton = tkinter.Button(self.scOperationFrame, text="更新", font=self.customFont, width=5,
                                       height=1, command=self.updtSC)
        self.scButton.pack(side=tkinter.LEFT)

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
            # 回显至entry
            self.s_snoVar.set(str(self.currentRow[1]))
            self.s_sclassVar.set(str(self.currentRow[0]))
            self.s_snameVar.set(str(self.currentRow[2]))
            self.s_ssexVar.set(str(self.currentRow[3]))
            self.s_sageVar.set(str(self.currentRow[4]))
            self.s_sdeptVar.set(str(self.currentRow[5]))
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
            # 回显至entry
            self.c_cnoVar.set(str(self.currentRow[0]))
            self.c_cnameVar.set(str(self.currentRow[1]))
            self.c_cpnoVar.set(str(self.currentRow[2]))
            self.c_ccreditVar.set(str(self.currentRow[3]))
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
            # 回显至entry
            self.sc_snoVar.set(str(self.currentRow[1]))
            self.sc_sclassVar.set(str(self.currentRow[0]))
            self.sc_cnoVar.set(str(self.currentRow[2]))
            self.sc_gradeVar.set(str(self.currentRow[3]))
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

    # 更新s
    def updtS(self):
        try:
            if self.dbIns is None:
                self.alert("数据库未连接")
            elif self.currentRow is None:
                self.alert("请选中一行学生记录")
            else:
                sname = self.s_snameVar.get()
                ssex = self.s_ssexVar.get()
                sage = self.s_sageVar.get()
                sdept = self.s_sdeptVar.get()
                self.dbIns.openCursor()  # 打开游标
                result = self.dbIns.updateCustom(
                    "s",
                    ["sname=" + repr(sname), "ssex=" + repr(ssex), "sage=" + sage, "sdept=" + repr(sdept)],
                    ["sno=" + self.currentSSno, "sclass=" + self.currentSClass]
                )
                if result is True:
                    self.alert("修改学生成功")
                    self.freshS()
                    self.s_snoVar.set("")
                    self.s_sclassVar.set("")
                    self.s_snameVar.set("")
                    self.s_ssexVar.set("")
                    self.s_sageVar.set("")
                    self.s_sdeptVar.set("")
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

    # 更新c
    def updtC(self):
        try:
            if self.dbIns is None:
                self.alert("数据库未连接")
            elif self.currentRow is None:
                self.alert("请选中一行课程记录")
            else:
                cname = self.c_cnameVar.get()
                cpno = self.c_cpnoVar.get()
                ccredit = self.c_ccreditVar.get()
                self.dbIns.openCursor()  # 打开游标
                result = self.dbIns.updateCustom(
                    "c",
                    ["cname=" + repr(cname), "cpno=" + cpno, "ccredit=" + ccredit],
                    ["cno=" + self.currentCCno]
                )
                if result is True:
                    self.alert("修改课程成功")
                    self.freshC()
                    self.c_cnoVar.set("")
                    self.c_cnameVar.set("")
                    self.c_cpnoVar.set("")
                    self.c_ccreditVar.set("")
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

    # 更新sc
    def updtSC(self):
        try:
            if self.dbIns is None:
                self.alert("数据库未连接")
            elif self.currentRow is None:
                self.alert("请选中一行学生记录")
            else:
                grade = self.sc_gradeVar.get()
                self.dbIns.openCursor()  # 打开游标
                result = self.dbIns.updateCustom(
                    "sc",
                    ["grade=" + grade],
                    ["sno=" + self.currentSSno, "sclass=" + self.currentSClass, "cno=" + self.currentCCno]
                )
                if result is True:
                    self.alert("修改选课成功")
                    self.freshSC()
                    self.sc_snoVar.set("")
                    self.sc_sclassVar.set("")
                    self.sc_cnoVar.set("")
                    self.sc_gradeVar.set("")
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
