import time
import os
from ..models import SDPC_userdetail, SDPC_login

id_base = 1000000000

def AddUser(paramt):
    newUser = {'c_perno': AccountCalc(), 'c_username': paramt['username'], 'c_phone': paramt['phone']}
    User = SDPC_userdetail(**newUser)
    try:
        User.save()
        return User, newUser['c_perno']
    except Exception as e:
        return "failed " + str(e)


def AddLogUser(paramt):
    newLogUser = {'password': paramt['password'], 'flag': 1,
                  'register_time': time.strftime("%Y-%m-%d", time.localtime()),
                  'useraccount': paramt['useraccount']}
    User = SDPC_login(**newLogUser)
    try:
        User.save()
        os.mkdir('E:\\Py workshop\\OICQ\\server\\'+str(paramt['useraccount'].c_perno))
        return "注册成功！", 0
    except Exception as e:
        return "注册失败！" + str(e), 300299


def AccountCalc():
    u_id = int(time.time()) - id_base
    return u_id
