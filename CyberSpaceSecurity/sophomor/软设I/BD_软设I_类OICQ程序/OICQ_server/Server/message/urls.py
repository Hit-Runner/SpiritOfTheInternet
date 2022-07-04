from django.conf.urls import url, include
from ..message import views
urlpatterns = [
    url(r'store', views.StoreMessage),
    url(r'get', views.ReSendMessage)
]