from ..models import SDPC_addrbook, SDPC_userdetail
from ..UserInter.iprecord import UserIpAddr
from ..UserInter.userstate import UserStatus

def Connect(param):
    relation = {}
    relation_rev = {}
    try:
        check = SDPC_addrbook.objects.filter(useraccount=param['useraccount']).filter(friend_to=param['targetaccount'])
        if check.exists():
            return 'already friend', 0
        else:
            self = SDPC_userdetail.objects.get(c_perno=param['useraccount'])
            target = SDPC_userdetail.objects.get(c_perno=param['targetaccount'])
            relation['useraccount'] = self
            relation['friend_to'] = target
            relation_rev['useraccount'] = target
            relation_rev['friend_to'] = self
            rel = SDPC_addrbook(**relation)
            rel_rev = SDPC_addrbook(**relation_rev)
            rel.save()
            rel_rev.save()
            return 'ok', 0
    except SDPC_userdetail.DoesNotExist:
        return 'no such user', -1
    except Exception as e:
        return 'failed ' + str(e), -300299


def Disconnect(param):
    try:
        res1 = SDPC_addrbook.objects.filter(useraccount=param['useraccount']).filter(friend_to=param['targetaccount'])
        res2 = SDPC_addrbook.objects.filter(useraccount=param['targetaccount']).filter(friend_to=param['useraccount'])
        res = res1 | res2
        for rel in res:
            if rel:
                rel.delete()
                return 'ok', 0
    except Exception as e:
        return 'failed ' + str(e), -300299


def GetList(param):
    resp = []
    u = UserIpAddr()
    s = UserStatus()
    status = s.GetAllOnline()
    try:
        res = SDPC_addrbook.objects.filter(useraccount=param)
        for rel in res:
            addr = u.GetAddr(rel.friend_to.c_perno)
            if rel.friend_to.c_perno in status:
                user_s = 1
            else:
                user_s = 0
            resp.append((rel.friend_to.c_username, rel.friend_to.c_perno, '0.0.0.0', user_s))
        return 'ok', 0, resp
    except Exception as e:
        return 'failed ' + str(e), -300299, []





if __name__ == '__main__':
    msg, code = Connect({'useraccount': '609660805', 'targetaccount': '609661075'})
    print(msg, code)