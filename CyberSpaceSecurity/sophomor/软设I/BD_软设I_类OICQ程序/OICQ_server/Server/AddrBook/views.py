import json
from django.http import JsonResponse
from .FriManage import Connect, Disconnect, GetList


def AddFriend(request):
    response = {}
    try:
        param = request.body
        paramt = json.loads(param)
        msg, code = Connect(paramt)
        response['msg'] = msg
        response['code'] = code
        return JsonResponse(response)
    except Exception as e:
        response['msg'] = 'failed ' + str(e)
        response['code'] = -300300
        return JsonResponse(response)


def DelFriend(request):
    response = {}
    try:
        param = request.body
        paramt = json.loads(param)
        msg, code = Disconnect(paramt)
        response['msg'] = msg
        response['code'] = code
        return JsonResponse(response)
    except Exception as e:
        response['msg'] = 'failed ' + str(e)
        response['code'] = -300300
        return JsonResponse(response)


def GetFriendList(request):
    response = {}
    try:
        param = request.body
        paramt = json.loads(param)
        msg, code, resp = GetList(paramt['useraccount'])
        # 返回参数： 用户编号，用户名，用户状态， 用户ip， （用户头像？）
        # [{},{},{},{},...]
        response['msg'] = msg
        response['code'] = code
        response['data'] = resp
        return JsonResponse(response)
    except Exception as e:
        response['msg'] = 'failed ' + str(e)
        response['code'] = -300300
        return JsonResponse(response)


