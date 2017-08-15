<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wilson
  Date: 2017/8/8
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>横向树状图</title>
    <link rel="stylesheet" href="/BA/plugins/layui/css/layui.css" media="all" />
    <script type="text/javascript" src="/js/jquery-3.2.0.min.js"></script>

    <style>
        body{
            overflow: auto;
        }
    </style>
</head>
<body>
    <div id="div_index" align="center" style="margin:10px 0px 0px  0px">
        <button id="button1" class="layui-btn layui-btn-radius layui-btn-normal" onclick="show(this)">测试按钮</button>
    </div>

    <script type="text/javascript">
        var showbt=[];
        var json=[22,33,44,55,66,77];   //人员id数据
        var layer=2;    //树形图 层级

        //获取元素的坐标
        function getCoordinate(data){
            var canvasWidth=$('#canvas'+layer)[0].offsetLeft;
            var ele = data;
            var width=ele.offsetWidth;
            var height=ele.offsetHeight;
            var top=ele.offsetTop;
            var left=ele.offsetLeft-canvasWidth+width/2;

            var map={
                "canvasWidth":canvasWidth,
                "ele":ele,
                "top":top,
                "left":left,
                "width":width,
                "height":height
            };
            return map;
        }

        //隐藏其他兄弟元素的div
        function hideEle(data){
            var siblings=$(data).siblings("button");
            $(siblings).each(function(index,value){
                if(value.className=="layui-btn layui-btn-radius layui-btn-danger"){
                    var layerId=showbt[value.id];     //获取按钮对应layer的id
                    document.getElementById(layerId).style.display="none";     //把目前展开的div全部隐藏
                    value.className="layui-btn layui-btn-radius layui-btn-normal";     //还原按钮颜色
                }
            });
        }

        function show(data){

            //控制隐藏显示
            if (showbt[data.id]!=undefined){
                var id=showbt[data.id];
                if(document.getElementById(id).style.display=='block'){
                    document.getElementById(id).style.display='none';
                    data.className='layui-btn layui-btn-radius layui-btn-normal';   //还原按钮颜色
                    return;
                }else{
                    hideEle(data);
                    document.getElementById(id).style.display='block';
                    data.className='layui-btn layui-btn-radius layui-btn-danger';   //改变按钮颜色
                    return;
                }
            }

            var dataCenter=data.offsetLeft + data.offsetWidth / 2;   //按钮的中心 到左边的距离（中心点）

            var demo="<div id='layer"+layer+"' style='display: block'> <canvas id='canvas"+layer+"' height='50'>您的浏览器不支持 Canvas</canvas><br/>";
            $(json).each(function(index,value){
                demo+="<button id='button"+value+"' class='layui-btn layui-btn-radius layui-btn-normal'  onclick='show(this)'>测试按钮"+value+"</button>";
            });
            demo+="</div>";

            if(layer==2){
                $('#div_index').append(demo);     //第一次直接添加到div_index中
            }else {
                hideEle(data);
                $('#'+data.parentElement.id).append(demo);     //嵌套到父元素的div里面
            }

            var firstele=document.getElementById("button"+json[0]);    //第一个按钮
            var lastele=document.getElementById("button"+json[json.length-1]);      //最后一个按钮
            var marginleft=(dataCenter-((lastele.offsetLeft+lastele.offsetWidth-firstele.offsetLeft)/2)-firstele.offsetLeft)*2;  //获取第一个按钮和第二个按钮的坐标，偏移距离，保持和父元素居中对齐状态
            firstele.style.marginLeft=marginleft;

            //动态扩展body的宽度
            if(firstele.offsetTop!=lastele.offsetTop) {        //判断此行是否放得下所有元素，如果放不下，则扩展body宽度
                var totalLength = firstele.offsetWidth;      //计算行内元素的总宽度，初始化为第一个元素的宽度
                var otherEle = $(firstele).siblings("button");
                $(otherEle).each(function (index, value) {
                    totalLength += value.offsetWidth+200;    //加上按钮的间距
                });

                var bodyWidth = $('body')[0].offsetWidth;

                if ((totalLength / 2) > bodyWidth) {
                    $('body')[0].style.width = totalLength + 'px';    //如果元素总宽度的一半大于body宽度，则宽度扩展为元素总宽度
                } else {
                    $('body')[0].style.width = dataCenter+totalLength/2 + 'px';    //如果父元素与body宽度的间距小于元素总宽度的一半，则宽度扩展为元素总宽度的一半
                }
               // window.location.hash="#"+data.id;
                window.scrollBy(data.offsetLeft,data.offsetTop);     //定位到父元素的位置
            }

            //设置H5画布
            var c = document.getElementById("canvas"+layer);
            c.width=(lastele.offsetLeft+lastele.offsetWidth-firstele.offsetLeft);    //设置画布的长度为画布中所有按钮的总长度
            c.style.marginLeft=marginleft;    //设置画布的偏移距离
            var cxt = c.getContext("2d");

            //上一级父节点的参数
            var canvasWidth=$('#canvas'+layer)[0].offsetLeft;    //画布到左边的距离
            var w=data.offsetWidth;
            var h=data.offsetHeight;
            var t=data.offsetTop-11;
            var l=data.offsetLeft-canvasWidth+w/2;

            cxt.beginPath();
            cxt.moveTo(l,0);
            cxt.lineTo(l,25);

            //设置线的两端位置
            $(json).each(function(index,value){
                var bt=getCoordinate($('#button'+value)[0]);

                cxt.moveTo(l,25);
                cxt.lineTo(bt["left"],25);
                cxt.lineTo(bt["left"],bt["top"]);
            });

            //开始绘制
            cxt.stroke();

            data.className='layui-btn layui-btn-radius layui-btn-danger';   //改变按钮颜色

            //假数据
            if(layer==2){
                json=[222,333,444,555,666,777,888,999,101010/*,111111,121212,131313,141414,151515,161616,171717,181818,191919,202020*/];
            }else if(layer==3){
                json=[2222,3333];
            } else if(layer==4){
                json=[22222,33333,44444,55555];
            } else if(layer==5){
                json=[222222,333333,444444,555555,666666,777777];
            } else if(layer==6){
                json=[2222222,3333333,4444444,5555555,6666666,7777777,8888888];
            } else if(layer==7){
                json=[22222222,33333333,44444444,55555555,66666666,77777777,88888888,99999999,10101010,11111111];
            } else if(layer==8){
                json=[222222222,333333333,444444444,555555555];
            }

            showbt[data.id]="layer"+layer;
            layer++;
        }
    </script>
</body>
</html>
