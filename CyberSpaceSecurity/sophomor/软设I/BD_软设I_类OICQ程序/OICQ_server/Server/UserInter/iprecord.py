import redis


class UserIpAddr:
    def __init__(self):
        self.redis_link = redis.Redis(host='localhost', port=6379, decode_responses=True)

    def AddAddr(self, useraccount, ipaddr):
        try:
            self.redis_link.hset('userAddr', useraccount, ipaddr)
            return 'ok', 0
        except Exception as e:
            return 'failed '+str(e), -300299

    def GetAddr(self, useraccount):
        try:
            if self.redis_link.hexists('userAddr', useraccount):
                target_addr = self.redis_link.hget('userAddr', useraccount)
            else:
                target_addr = '0.0.0.0'
            return 'ok', 0, target_addr
        except Exception as e:
            return 'failed ' + str(e), -300299

    def DelAddr(self, useraccount):
        try:
            self.redis_link.hdel('userAddr', useraccount)
            return 'ok', 0
        except Exception as e:
            return 'failed '+str(e), -300299
