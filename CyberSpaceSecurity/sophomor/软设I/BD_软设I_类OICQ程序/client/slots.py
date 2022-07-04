import time

from PySide2.QtCore import Slot
import hashlib
import json
import requests
import os
import socket

base_url = 'http://127.0.0.1:8000/api/'
Key = 'wuhuairlines'


def sha256(arg):
    sha256_key = hashlib.sha3_256(bytes(Key, encoding='utf-8'))
    sha256_key.update(bytes(arg, encoding='utf-8'))
    return sha256_key.hexdigest()


def UserLogin(username, password):
    passwd = sha256(password)
    dict_ = {'useraccount': username, 'password': passwd}
    log_js = json.dumps(dict_)
    res = requests.post(url=base_url + 'interact/login', data=log_js)
    res.encoding = 'utf-8'
    resp = json.loads(res.text)
    return resp['msg']


def UserReg(username, password, phone):
    passwd = sha256(password)
    dict_ = {'username': username, 'password': passwd, 'phone': phone}
    log = json.dumps(dict_)
    res = requests.post(url=base_url + 'interact/register', data=log)
    res.encoding = 'utf-8'
    resp = json.loads(res.text)
    print(resp)
    return resp


def GetStatus(username):
    dict_ = {'useraccount': username}
    log = json.dumps(dict_)
    res = requests.post(url=base_url + 'friend/getList', data=log)
    res.encoding = 'utf-8'
    resp = json.loads(res.text)
    print(resp)
    return resp['data']


def AddFriend(username, targetname):
    dict_ = {'useraccount': username, 'targetaccount': targetname}
    log = json.dumps(dict_)
    res = requests.post(url=base_url + 'friend/add', data=log)
    res.encoding = 'utf-8'
    resp = json.loads(res.text)
    return resp['msg']


def SendMessage(sender, receiver, tar_addr, message):
    message = json.dumps(
        {'message': message, 'sender': sender, 'time': time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())})
    data = {'receiver': receiver, 'message': message}
    log = json.dumps(data)
    if tar_addr == '0.0.0.0':
        res = requests.post(url=base_url + 'message/store', data=log)
        res.encoding = 'utf-8'
        resp = json.loads(res.text)
        print(resp)
        return resp['code'], message
    else:
        try:
            s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            port = 9999
            s.connect((tar_addr, port))
            s.send(message.encode('utf-8'))
            s.close()
            return 'ok'
        except Exception as e:
            return -1, 'failed ' + str(e)


def StoreChat(user, target, msg):
    ifpath = os.path.exists(str(user) + '\\' + str(target))
    if not ifpath:
        os.mkdir(str(user) + '\\' + str(target))
    s = open(str(user) + '\\' + str(target) + '\\chat.txt', 'a')
    s.write(msg+'\n')
    s.close()


def Logout(useraccount):
    data = {'useraccount': useraccount}
    log = json.dumps(data)
    requests.post(url=base_url + 'interact/logout', data=log)


def ReceiveMessage(useraccount):
    data = {'useraccount': useraccount}
    log = json.dumps(data)
    res = requests.post(url=base_url + 'message/get', data=log)
    res.encoding = 'utf-8'
    resp = json.loads(res.text)
    return resp['msg']

def loadChat(useraccount, target):
    s = open('E:\Py workshop\OICQ\client\\'+str(useraccount) + '\\' + str(target) + '\\chat.txt', 'r')
    all_ = s.readlines()
    return all_

if __name__ == '__main__':
    print(sha256('dyc20000830'))
