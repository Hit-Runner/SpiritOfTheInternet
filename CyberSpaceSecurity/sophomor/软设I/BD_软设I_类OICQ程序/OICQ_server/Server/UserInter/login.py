from ..models import SDPC_login
from django.core import exceptions
import os

def UserLogin(param):
    try:
        check = SDPC_login.objects.get(useraccount=param['useraccount'])
        if param['password'] == check.password:
            check.flag = True
            check.save()
            ife = os.path.exists('E:\\Py workshop\\OICQ\\server\\'+str(param['useraccount']))
            if not ife:
                os.mkdir('E:\\Py workshop\\OICQ\\server\\'+str(param['useraccount']))
            return 'ok', 0
        else:
            return 'wrong pass', -1
    except exceptions.ObjectDoesNotExist:
        return 'no such user', -2
    except Exception as e:
        return 'error:'+str(e), -300299


def UserLogout(param):
    try:
        check = SDPC_login.objects.get(useraccount=param['useraccount'])
        check.flag = False
        check.save()
        return 'ok'
    except Exception as e:
        return 'failed '+str(e)
