import redis


class UserStatus:
    def __init__(self):
        self.redis_link = redis.Redis(host='localhost', port=6379, decode_responses=True)

    def UserOnline(self, useraccount):
        try:
            self.redis_link.sadd('useronline', useraccount)
            return 'ok'
        except Exception as e:
            return 'failed '+str(e)

    def UserOffline(self, useraccount):
        try:
            self.redis_link.srem('useronline', useraccount)
            return 'ok'
        except Exception as e:
            return 'failed '+str(e)

    def GetAllOnline(self):
        try:
            return self.redis_link.smembers('useronline')
        except Exception as e:
            return 'failed '+str(e)


if __name__ == '__main__':
    test = UserStatus()
    test.UserOnline(useraccount='1')
    test.UserOnline(useraccount='2')
