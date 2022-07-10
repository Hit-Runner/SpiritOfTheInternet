from django.db import models


# Create your models here.
class SDPC_userdetail(models.Model):
    id = models.AutoField(primary_key=True)
    c_perno = models.CharField(max_length=10, unique=True)
    c_username = models.CharField(max_length=10)
    c_phone = models.CharField(max_length=14)
    c_gender = models.CharField(max_length=3)
    c_email = models.CharField(max_length=30, blank=True)
    c_address = models.CharField(max_length=50, blank=True)
    c_sig = models.CharField(max_length=100, blank=True)
    c_profile = models.ImageField(blank=True)
    c_brief = models.CharField(max_length=100, blank=True)


class SDPC_login(models.Model):
    id = models.AutoField(primary_key=True)
    useraccount = models.ForeignKey(to='SDPC_userdetail', to_field='c_perno', on_delete=models.CASCADE)
    password = models.CharField(max_length=65)
    laslogin = models.DateTimeField(auto_now=True)
    flag = models.BooleanField()
    register_time = models.DateField(auto_created=True)


class SDPC_addrbook(models.Model):
    id = models.AutoField(primary_key=True)
    useraccount = models.ForeignKey(to='SDPC_userdetail', to_field='c_perno', on_delete=models.CASCADE,
                                    related_name='self')
    friend_to = models.ForeignKey(to='SDPC_userdetail', to_field='c_perno', on_delete=models.CASCADE)
