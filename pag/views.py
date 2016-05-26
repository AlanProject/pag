#-*- coding:utf-8 -*-
from django.shortcuts import render,HttpResponseRedirect,HttpResponse
import models
# Create your views here.

# 获取当前页码的所有数据并返回
def pag_current(current,count=10):
    current -= 1
    start = current*count
    end = count*current+count
    # data = models.article.objects.filter(id__gte=start).filter(id__lte=end)
    data = models.article.objects.all()[start:end]
    return data

# 页码分篇
def pag_change(current):
    sum = divmod(models.article.objects.count(),10)[0]
    if divmod(models.article.objects.count(),10)[1] >0:
        sum += 1
    start = current-5
    end = current+4
    if start < 1:
        start = 1
        end = 10
    if end >sum:
        end = sum
        start = sum-9
    return range(start,end+1)


# 主调度程序
def index(request):
    if request.method == 'GET':
        curpag = request.GET.get('curpag')
        num = request.GET.get('num')
        print num
        if not num:
            num = 0
        action = request.GET.get('action')
        if curpag:
            curpag = int(curpag.strip('/'))
        else:
            curpag = 1
        data = pag_current(curpag).values()
        current_id = curpag
        if action == 'Next':
            curpag += 10*int(num)
        elif action == 'Previous':
            curpag -= 10*int(num)
        else:
            pass
        num += int(num)+1
        number_list = pag_change(curpag)
    return render(request,'index.html',{'data':data,'number_list':number_list,'current_id':current_id,'num':num})
