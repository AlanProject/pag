#-*- coding:utf-8 -*-
from django.shortcuts import render

# Create your views here.
from pag.paging import Paging
import models

def index(request):
    # self, current, counts, dbdata, number=10
    current = request.GET.get('curpag')
    counts = models.article.objects.count()
    dbdata = models.article.objects.all()
    pagobj = Paging(current=current, counts=counts, dbdata=dbdata)
    return render(request, 'index.html', pagobj.handle())