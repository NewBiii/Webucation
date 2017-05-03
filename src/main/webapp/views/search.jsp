<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%--
  Created by IntelliJ IDEA.
  User: NewBee
  Date: 2017/4/1
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/layui/css/layui.css" media="all">

    <title>查找结果</title>
</head>
<body>
<jsp:include page="header.jsp" flush="true"/>
<br><br><br><br><br>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-8 column">
            <c:forEach items="${noteList}" var="note">
                <blockquote>
                    <p>
                        <a href="/note/noteShow?noteid=${note.noteid}">${note.notename}</a>
                    </p>
                    <small><fmt:formatDate value="${note.notetime}" type="date" dateStyle="long"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <cite>
                            类型：
                            <c:if test="${(note.typee)==0}">
                                笔记
                            </c:if>
                            <c:if test="${(note.typee)==1}">
                                课程
                            </c:if><%----%>
                        </cite>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <cite>作者：${note.userid}</cite>
                    </small>
                </blockquote>
            </c:forEach>


            <div id="pageDemo"></div>

            <script src="/layui/layui.js"></script>
            <script>
                layui.use(['layer', 'laypage', 'element'], function () {
                    var layer = layui.layer
                        , laypage = layui.laypage;

                    //分页
                    laypage({
                        cont: 'pageDemo' //分页容器的id
                        , pages: 100 //总页数
                        , skin: '#4682b4' //自定义选中色值
                        //,skip: true //开启跳页
                        , jump: function (obj, first) {
                            if (!first) {
                                layer.msg('第' + obj.curr + '页');
                            }
                        }
                    });
                });
            </script>
        </div>
        <div class="col-md-4 column">
            <h3>
                广告招商席位广告招商席位广告招商席位广告招商席位广告招商席位广告招商席位广告招商席位
            </h3>
        </div>
    </div>
</div>

</body>
</html>
