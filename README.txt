1.这是一个分页插件 看起来好像是
2.这个插件基于Python django运作
3.未完待续


#视图代码调用
def manager(request, argv):
    current = request.GET.get('curpag')
    counts = models.DogInfo.objects.count()
    dbdata = models.DogInfo.objects.all()
    pagobj = Paging(current=current, counts=counts, dbdata=dbdata)
    pag_data = pagobj.handle()


    if argv == '1':
        return render(request, 'manager_article.html', pag_data)
    elif argv == '2':
        return render(request, 'manager_section.html', pag_data)
    else:
        return render(request, 'manager_article.html', pag_data,)