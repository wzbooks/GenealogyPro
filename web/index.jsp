<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/19
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>$Title$</title>
    <script src="<c:url value="WEB-INF/js/jquery-1.8.2.min.js"/>"></script>
    <script src="<c:url value="WEB-INF/layui/lay/dest/layui.all.js"/>"></script>
    <script src="<c:url value="WEB-INF/layui/layui.js"/>"></script>
      <META HTTP-EQUIV="Refresh" CONTENT="0;URL=/index">
    <script type="text/javascript">
      function aa(){

       /* layui.use('layer', function(){
          var layer = layui.layer;

          layer.msg('hello');
        });*/

        var layer=layui.layer;

         layer.open({
         title: '在线调试'
         ,content: '可以填写任意的layer代码'
         });

         layer.msg('asdas');
      }

    </script>
  </head>
  <body>
  $END$
  <input type="button" value="layui" onclick="aa()">
  <a href="<c:url value="WEB-INF/pages/main.jsp"/>">跳转主页</a>
  </body>
</html>
