from django.conf.urls import url
from ..AddrBook import views


urlpatterns = [
    url(r'add', views.AddFriend),
    url(r'del', views.DelFriend),
    url(r'getList', views.GetFriendList)
]