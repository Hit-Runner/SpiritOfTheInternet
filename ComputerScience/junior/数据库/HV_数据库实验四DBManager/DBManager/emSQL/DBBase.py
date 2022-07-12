import os.path
import time
import pymysql  # 导入模块
import traceback


class DBBase:
    # 构造函数
    def __init__(self, host, port, user, passwd, dbName):
        self.host = host
        self.port = port
        self.user = user
        self.passwd = passwd
        self.dbName = dbName
        self.db = None  # 数据库
        self.cursor = None  # 游标
        self.error = None  # 错误

    # 析构函数
    def __del__(self):
        if self.cursor is not None:
            self.cursor.close()
        if self.db is not None:
            self.db.close()

    # 连接数据库
    def connectDB(self):
        try:
            self.db = pymysql.connect(host=self.host,
                                      port=self.port,
                                      user=self.user,
                                      passwd=self.passwd,
                                      db=self.dbName,
                                      charset='utf8')  # 本机数据库连接
            return "Connected Successfully"
        except Exception as e:
            print(e)
            self.error = e
            traceback.print_exc()
            return e

    # 关闭数据库
    def closeDB(self):
        try:
            if self.db is not None:
                self.db.close()
                self.db = None
                return "Closed Successfully"
        except Exception as e:
            print(e)
            self.error = e
            traceback.print_exc()
            return e

    # 打开游标
    def openCursor(self):
        try:
            self.cursor = self.db.cursor()
        except Exception as e:
            print(e)
            self.error = e
            traceback.print_exc()
            return e

    # 关闭游标
    def closeCursor(self):
        try:
            if self.cursor is not None:
                self.cursor.close()
                self.cursor = None
        except Exception as e:
            print(e)
            self.error = e
            traceback.print_exc()
            return e

    # 自定义查询
    def searchCustom(self, fields, table, condition):
        sql = "SELECT "
        if fields == "*":
            sql += fields
            sql += " "
        else:
            fieldsTemp = ""
            for i in range(len(fields)):
                fieldsTemp += fields[i]
                if i != len(fields) - 1:
                    fieldsTemp += ","
            sql += fieldsTemp
        sql += " FROM "
        sql += table
        if condition is not None:
            sql += " "
            sql += " WHERE "
            for i in range(len(condition)):
                sql += condition[i]
                if i == len(condition) - 1:
                    break
                sql += " AND "
        print(sql)
        try:
            self.cursor.execute(sql)
            data = self.cursor.fetchall()
            # for i in data:
            #     print(i)
            return data
        except Exception as e:
            print(e)
            self.error = e
            traceback.print_exc()
            return e

    # 自定义删除
    def deleteCustom(self, table, condition):
        sql = "DELETE FROM "
        if table:
            sql += table
        if condition is not None:
            sql += " "
            sql += " WHERE "
            for i in range(len(condition)):
                sql += condition[i]
                if i == len(condition) - 1:
                    break
                sql += " AND "
        print(sql)
        try:
            self.cursor.execute(sql)
            self.db.commit()
            return True
        except Exception as e:
            print(e)
            self.db.rollback()  # 错误回滚
            self.error = e
            traceback.print_exc()
            return e

    # 自定义插入
    def insertCustom(self, table, values):
        sql = "INSERT INTO "
        if table:
            sql += table
        if values:
            sql += " VALUES "
            sql += values
        print(sql)
        try:
            self.cursor.execute(sql)
            self.db.commit()
            return True
        except Exception as e:
            print(e)
            self.db.rollback()  # 错误回滚
            self.error = e
            traceback.print_exc()
            return e

    # 自定义更新
    def updateCustom(self, table, values, conditions):
        sql = "UPDATE "
        if table:
            sql += table
        sql += " SET "
        for i in range(len(values)):
            sql += values[i]
            if i == len(values) - 1:
                break
            sql += " , "
        if conditions is not None:
            sql += " "
            sql += " WHERE "
            for i in range(len(conditions)):
                sql += conditions[i]
                if i == len(conditions) - 1:
                    break
                sql += " AND "
        print(sql)
        try:
            self.cursor.execute(sql)
            self.db.commit()
            return True
        except Exception as e:
            print(e)
            self.db.rollback()  # 错误回滚
            self.error = e
            traceback.print_exc()
            return e

    # 自定义备份
    def backupCustom(self, rootPath):
        try:
            # 创建备份文件的文件夹
            mkdirDir = rootPath + time.strftime("%Y%m%d%H%M%S") + "/"  # 创建时间目录
            if not os.path.exists(mkdirDir):  # 如果不存在该文件夹
                os.mkdir(mkdirDir)  # 创建
                print("创建文件夹成功：" + str(os.path.abspath(mkdirDir)))
            else:
                print("已存在该备份文件")
                return False, "已存在该备份文件"
            os.chdir(mkdirDir)
            bakFileName = self.dbName + "_" + time.strftime("%Y%m%d%H%M%S") + ".sql"  # 定义备份文件名
            print(bakFileName)
            cmd = "mysqldump -h%s -u%s -p%s %s > %s --default_character-set=utf8" % \
                  (self.host, self.user, self.passwd, self.dbName, bakFileName)
            print(cmd)
            cmdR = os.system(cmd)
            print(cmdR)
            if cmdR == 0:  # 执行结果为0表示成功
                print(self.dbName, " is backup successfully")
                print("Path:", str(os.path.abspath(mkdirDir)) + "\\" + bakFileName)
                return True, self.dbName + "is backup successfully\n" + "Path:" + str(
                    os.path.abspath(mkdirDir)) + "\\" + bakFileName
            else:
                print(self.dbName, "is backup failed")
                return False, self.dbName + "is backup failed"
        except Exception as e:
            print(e)
            self.error = e
            traceback.print_exc()
            return e
