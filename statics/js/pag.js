/**
 * Created by jhwangyl2 on 2016/5/26.
 */

//获取当前页码列表
function getlist(){
    var data = $('.pagination').children();
    var pag_list = [];
    $.each(data,function(k,v){
        if ($(v).attr('tag') == 'pag'){
            var num = $(v).children().html();
            num = Number(num);
            pag_list.push(num)
        }
    });
    return pag_list
}




//获取当前点击的选项
function action(args){
    var data = getlist();
    var tmp_data = [10,25,31,14,16,48];
    if (args == 'Next'){
        update(tmp_data)
    }else if((args == 'Previous')){
        console.log(123)
    }
}


//根据选项对列表页码进行处理并返回

function update(data){
    var head = "<li><a onclick="+"action('Previous')" + "aria-label="+ "'Previous'" + "><span  aria-hidden=true>&laquo;</span></a></li>"
    var html = '';
    var end = "<li><a onclick="+"action('Next')" + "aria-label="+ "'Next'" + "><span  aria-hidden=true>&raquo;</span></a></li>"
    for ( i in data){

        console.log(data);
        console.log(i);
        html += "<li tag='pag'>"+"<a href='?curpag="+data[i]+"'>"+data[i]+"</a></li>"
    }
    html = head + html + end;
    $('.pagination').html(html)
}



