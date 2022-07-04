from django.conf.urls import url
from ..UserInter import views
urlpatterns = [
    url(r'test', views.test),
    url(r'register', views.HandleRegister),
    url(r'login', views.HandleLogin),
    url(r'logout', views.HandleLogout)
]