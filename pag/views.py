#-*- coding:utf-8 -*-
from django.shortcuts import render,HttpResponseRedirect,HttpResponse
import models
# Create your views here.


# 设置分页的阈值、比如每10条数据一页 这里设置10
number = 10

# 获取数据总条数
sums = models.article.objects.count()

# 获取所有数据
obj = models.article.objects.all()

# 获取当前页码的所有数据并返回


def pag_current(current):
    current -= 1
    start = current*number
    end = number*current+number
    data = obj[start:end]
    return data

# 页码分篇


def pag_change(current):
    total = divmod(sums, number)[0]
    surplus = divmod(sums, number)[1]
    if surplus > 0:
        total += 1
    start = current-5
    end = current+4
    if start < 1:
        start = 1
        end = number
    if end > total:
        end = total
        start = total-9
    return range(start, end+1)


# 主调度程序
def index(request):
    if request.method == 'GET':
        curpag = request.GET.get('curpag')
        if curpag:
            curpag = int(curpag.strip('/'))
        else:
            curpag = 1
        data = pag_current(curpag).values()
        current_id = curpag
        number_list = pag_change(curpag)
    return render(request, 'index.html', {'data': data, 'number_list': number_list,'current_id':current_id})
