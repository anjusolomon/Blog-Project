from django.db import models
from datetime import datetime
from django.contrib.auth.models import User


# Create your models here.
class Posts(models.Model):
    author = models.ForeignKey(User,on_delete=models.CASCADE, null=True)
    title=models.CharField(max_length=200)
    body=models.TextField()
    created_at=models.DateTimeField(default=datetime.now,blank=True)
    picture = models.ImageField(upload_to='posts/images/', default='posts/images/None/no_img.jpg')
    def __str__(self):
       return self.title


    class Meta: 
       verbose_name_plural = "Posts"
 
 