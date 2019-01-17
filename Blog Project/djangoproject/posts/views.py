from django.shortcuts import render
from django.http import HttpResponse
from .models import Posts


# Create your views here.
def index(request):

  #  return HttpResponse("hello from posts")
   
  posts=Posts.objects.all()[:10]

  context={
     'title':'Latest Posts',
     'posts': posts
   }
  return render(request,'posts/index.html',context)
def details(request,id):
    try:
        post=Posts.objects.get(id=id)
    except Posts.DoesNotExist:
       raise Http404("post doesnot exist")
    context={
      'post':post
    }

    return render(request,'posts/details.html',context)


      
   

   
