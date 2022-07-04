from django.conf.urls import url, include
from .UserInter import urls as InterUrls
from .AddrBook import urls as FriendUrls
from .message import urls as MessageUrls

urlpatterns = [
    url(r'interact', include(InterUrls)),
    url(r'friend', include(FriendUrls)),
    url(r'message', include(MessageUrls))
]