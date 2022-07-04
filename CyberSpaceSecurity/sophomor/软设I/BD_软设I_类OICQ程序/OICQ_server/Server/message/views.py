from .funt import store, resend
from django.http import JsonResponse
import json


def StoreMessage(request):
    response = {}
    try:
        param = request.body
        paramt = json.loads(param)
        msg, code = store(paramt['receiver'], paramt['message'])
        response['msg'] = msg
        response['code'] = code
        return JsonResponse(response)
    except Exception as e:
        response['msg'] = 'failed' + str(e)
        response['code'] = -300300
        return JsonResponse(response)


def ReSendMessage(request):
    response = {}
    try:
        param = request.body
        paramt = json.loads(param)
        msg = resend(paramt['useraccount'])
        response['msg'] = msg
        response['code'] = 0
        return JsonResponse(response)
    except Exception as e:
        response['msg'] = 'failed' + str(e)
        response['code'] = -300300
        return JsonResponse(response)

