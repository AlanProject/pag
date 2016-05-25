from django.shortcuts import render,HttpResponseRedirect,HttpResponse
import models
# Create your views here.

def pag(current,count=10):
    current = int(current) - 1
    start = current*count
    end = count*current+count
    data = models.article.objects.filter(id__gte=start).filter(id__lte=end)
    number_list = range(start+1,end+1)
    return {'data':data,'number_list':number_list}

def pag_button(current):
    
def index(request):
    # for i in range(5,300):
    #     title = 'titile'+str(i)
    #     content = 'content'+str(i)
    #     data = {'article_titile':title, 'article_content':content}
    #     models.article.objects.create(**data)
    if request.method == 'GET':
        curpag = request.GET.get('curpag').strip('/')
        if curpag:
            pag_info = pag(curpag)
        else:
            pag_info = pag(1)
        data = pag_info['data'].values()
        number_list = pag_info['number_list']
    return render(request,'index.html',{'data':data,'number_list':number_list})
