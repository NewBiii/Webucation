<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.ssy.entity.UserEntity" %>
<%@ page import="com.ssy.entity.NoteEntity" %>
<%@ page import="java.util.Objects" %>
<%--
  Created by IntelliJ IDEA.
  Author: NewBiii
  Date: 2017/4/17
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" charset="utf-8" href="/dist/css/wangEditor.min.css">
    <title>笔记查看</title>
</head>
<body>

<jsp:include page="/views/header.jsp" flush="true"/>
<br><br><br>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column" align="right">
            <%if ( session.getAttribute("user") != null) {%>
            <%if (Objects.equals(((UserEntity) session.getAttribute("user")).getUserid(), ((NoteEntity) session.getAttribute("note")).getUserid())) {%>
            <div class="form-group">
                <a href="/note/edit?noteid=${note.noteid}" class="btn btn-primary">修改</a>
            </div>
            <%} else {%>
            <div class="col-md-11 column">
                <jsp:include page="/views/noteEvaluation.jsp" flush="true"/>
            </div>
            <div class="col-md-1 column" align="left">
                <c:if test="${!iscoll}">
                    <a href="/collection/keep?noteid=${note.noteid}&typee=${note.typee}"
                       class="btn btn-primary">收藏</a>
                </c:if>
                <c:if test="${iscoll}">
                    <a href="/collection/delcoll?noteid=${note.noteid}" class="btn btn-default">取消收藏</a>
                </c:if>
            </div>
            <%}}%>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-2 column">
            <div style="background-color: #0C0C0C;">
                <div style="background-color: #ffffff">
                    <br> <br> <br> <br>
                </div>
                <div style="width: 98%;background-color: #ffffff">
                    <img style="width:160px;height:160px;" src="/images/118701ttttt.jpg" class="img-circle"/>
                    <br><br>
                    <div class="panel panel-default" style="width: 98%;">
                        <div class="panel-footer">
                            作者：
                        </div>
                        <div class="panel-body">
                           ${auther.username}
                        </div>
                        <div class="panel-footer">
                            签名：
                        </div>
                        <div class="panel-body">
                            ${auther.userintroduce}
                        </div>
                        <div class="panel-footer">
                            邮箱：
                        </div>
                        <div class="panel-body">
                            ${auther.useremail}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-10 column">
            <div class="row clearfix">
                <div align="center">
                    <div style="width: 96%;" align="left">
                        <h3>
                            ${notename}
                        </h3>
                    </div>
                </div>
                <br><br>
                <div align="center">
                    <div style="width: 96%;" align="left">
                        <p>
                            ${notecontent}
                        </p>
                        <div style="width: 96%;" align="right">
                            <h2>
                                -END-
                            </h2>
                        </div>
                    </div>
                </div>
                <br><br><br><br>
                <form action="" name="" method="post" class="form-horizontal" role="form">
                    <div class="form-group">
                        <%if (session.getAttribute("user") != null) {%>
                        <%if (Objects.equals(((UserEntity) session.getAttribute("user")).getUserid(), ((NoteEntity) session.getAttribute("note")).getUserid())) {%>
                        <div class="col-sm-4">
                            <label>想对这篇文章进行修改</label>
                        </div>
                        <div class="col-sm-6">
                            <a href="/note/edit?noteid=${note.noteid}" class="btn btn-primary">修改</a>
                        </div>
                        <%} else {%>
                        <div class="col-sm-3">
                            <label>这篇文章有帮助么？给它个评价</label>
                        </div>
                        <div class="col-sm-7">
                            <jsp:include page="/views/noteEvaluation.jsp" flush="true"/>
                        </div>
                        <br><br>
                        <c:if test="${!iscoll}">
                            <div class="col-sm-3">
                                <label>或者你可以收藏它</label>
                            </div>
                            <div class="col-sm-7">
                                <a href="/collection/keep?noteid=${note.noteid}&typee=${note.typee}"
                                   class="btn btn-primary">收藏</a>
                            </div>
                        </c:if>
                        <c:if test="${iscoll}">
                            <div class="col-sm-3">
                                <label>你已收藏该文章</label>
                            </div>
                            <div class="col-sm-7">
                                <a href="/collection/delcoll?noteid=${note.noteid}" class="btn btn-default">取消收藏</a>
                            </div>
                        </c:if>
                        <%}%>
                    </div>
                </form>
                <br><br><br><br>
                <form action="" name="" method="post" class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="textarea2">还有疑惑？给他留言吧</label>
                        <textarea type="input" id="textarea2" style="height:200px" name="massage"></textarea>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">发送</button>
                        <a href="javascript:history.back(-1)" class="btn btn-default">返回</a>
                    </div>
                </form>
                <%}else {%>
                <h4><a href="/login.jsp">登陆</a>之后，体验更多内容。</h4>
                <br><br><br><br>
                <%}%>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" charset="utf-8" src="../dist/js/lib/jquery-1.10.2.min.js"></script>
<script type="text/javascript" charset="utf-8" src="../dist/js/wangEditor.min.js"></script>

<script type="text/javascript">
    var editor = new wangEditor('textarea2');
    // 上传图片（举例）
    editor.config.uploadImgUrl = '/upload/images';

    // 配置自定义参数（举例）
    /* editor.config.uploadParams = {
     token: 'abcdefg',
     user: 'wangfupeng1988'
     };*/

    // 设置 headers（举例）
    /* editor.config.uploadHeaders = {
     'Accept' : 'text/x-json'
     };*/

    editor.config.uploadImgFileName = 'myFileName';


    // 隐藏掉插入网络图片功能。该配置，只有在你正确配置了图片上传功能之后才可用。
    //editor.config.hideLinkImg = true;

    editor.create();
</script>
</body>
</html>
