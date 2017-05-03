<%@ page import="com.ssy.entity.UserEntity" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--
  Created by IntelliJ IDEA.
  Author: NewBiii
  Date: 2017/4/26
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" charset="utf-8" href="/dist/css/wangEditor.min.css">
    <title>我的笔记</title>
</head>
<body>
<jsp:include page="/views/header.jsp" flush="true"/>
<br><br><br><br><br>

<div class="container">
    <div class="row clearfix">
        <br><br><br>
        <div class="col-md-2 column">
            <div style="background-color: #0C0C0C;">
                <div style="background-color: #ffffff">

                </div>
                <div style="width: 98%;background-color: #ffffff">
                    <img style="width:160px;height:160px;" src="/images/118701ttttt.jpg" class="img-circle" align="center"/>

                    <br><br>
                    <div class="panel panel-default" style="width: 98%;">

                        <div class="panel-footer">
                            用户：
                        </div>
                        <div class="panel-body">
                            <%=((UserEntity) session.getAttribute("user")).getUsername()%>
                        </div>
                        <div class="panel-footer">
                            你写的笔记：
                        </div>
                        <div class="panel-body">
                            ${collnoteNum}篇
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-10 column">
            <div class="row clearfix">
                <c:forEach items="${collnoteList}" var="note">
                    <blockquote>
                        <p>
                            <a href="/note/noteShow?noteid=${note.noteid}"> ${note.notename}</a>
                        </p>
                        <small>
                            <fmt:formatDate value="${note.notetime}" type="date" dateStyle="long"/>&nbsp;&nbsp;&nbsp;&nbsp;
                            <cite>
                                <a href="/note/edit?noteid=${note.noteid}">编辑</a>
                                &nbsp;&nbsp;
                                <a href="/note/delete?noteid=${note.noteid}">删除</a>
                            </cite>
                        </small>
                    </blockquote>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
</body>
</html>
