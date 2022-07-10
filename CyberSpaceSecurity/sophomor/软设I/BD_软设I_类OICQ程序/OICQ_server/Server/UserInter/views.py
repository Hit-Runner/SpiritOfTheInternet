from django.shortcuts import render
from django.http import JsonResponse
from ..UserInter.register import AddUser, AddLogUser
from ..UserInter.userstate import UserStatus
from ..UserInter.iprecord import UserIpAddr
from ..UserInter.login import UserLogin, UserLogout
from ipware.ip import get_client_ip
# Create your views here.
import json


def test(request):
    return JsonResponse({'key': 'succeed'})


def HandleRegister(request):
    response = {}
    try:
        param = request.body
        paramt = json.loads(param)
        paramt['useraccount'], account = AddUser(paramt)
        msg, code = AddLogUser(paramt)
        response['msg'] = msg
        response['code'] = code
        response['id'] = account
        return JsonResponse(response)
    except Exception as e:
        response['msg'] = 'failed:' + str(e)
        response['error_num'] = -300300
        return JsonResponse(response)


def HandleLogin(request):
    response = {}
    try:
        param = request.body
        paramt = json.loads(param)
        msg, code = UserLogin(paramt)
        if code == 0:  # 密码验证正确
            ip_addr = get_client_ip(request)
            u_st = UserStatus()
            u_addr = UserIpAddr()
            u_st.UserOnline(paramt['useraccount'])
            u_addr.AddAddr(paramt['useraccount'], ip_addr[0])
            #         请求通讯录
            response['msg'] = 'ok'
            response['error_num'] = 0
            return JsonResponse(response)
        else:
            response = {'msg': msg, 'error_num': code}
            return JsonResponse(response)
    except Exception as e:
        response = {'msg': 'failed ' + str(e), 'error_num': -300300}
        return JsonResponse(response)


def HandleLogout(request):
    response = {}
    try:
        param = request.body
        paramt = json.loads(param)
        u_st = UserStatus()
        u_a = UserIpAddr()
        u_st.UserOffline(paramt['useraccount'])
        u_a.DelAddr(paramt['useraccount'])
        msg = UserLogout(paramt)
        response['msg'] = msg
        return JsonResponse(response)
    except Exception as e:
        return JsonResponse({'msg': 'failed ' + str(e)})
