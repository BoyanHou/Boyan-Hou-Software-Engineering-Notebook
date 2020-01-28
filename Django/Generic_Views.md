# Django Generic Views  
- Django处理一个URL请求服务器资源的基础逻辑:  
  mysite/urls.py 解析URL基础部分，决定进入该project的哪个app -->  
  appName/urls.py 解析URL剩余部分，决定使用该app的哪个view方法 -->  
  appName/views.py 处理request并返回response -->  
  appName/templates/appName/someHtml.html 存储html资源  
   - 注意：Django项目文件内对appName/templates/appName/ 路径可以自动识别成 appName/路径  


- 每个URL对应一个请求；  
- URL请求不能直接接触到html资源 
  必须通过view方法（either 自己的 or django提供的e.g. TemplateView class）获取该资源并做成httpresponse后才能返回给client
  (直接在)
  
## What's the Problem here? 
当处理复杂逻辑时，进入到views.py进行具体处理，是合理的  
但当URL仅需请求一个static html时（e.g.初始页面 & 页面跳转），并不需要任何逻辑处理直接返回html资源，此时再写view就显得冗余  

## How to Solve This?
在appName/urls.py 直接引用django自带的class based view，将html路径作为参数直接传入，如此便避免了在appName/views.py内的代码  
TIC,SMTC：此处使用django的TemlateView class举例
```python
# appName/urls.py

from django.urls import path
from django.views.generic import TemplateView

app_name = 'uper'
urlpatterns = [
    #path('', 'uper/index.html', name='index'), <---此种直接请求html的方法会报错：必须将html资源制作成HttpResponse才能返回给client
    path('', TemplateView.as_view(template_name="uper/index.html"), name='index'), # <--—-正确方法：使用TemlateView类的as_view方法将html资源制作为HttpResponse
]
```
