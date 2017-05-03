<%@ page import="com.ssy.entity.UserEntity" %>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation" style="background-color: #2b2e37">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1"><span
                            class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span></button>
                    <a class="navbar-brand" href="../../index.jsp">SSY网络课程学习</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="../../index.jsp">主页</a>
                        </li>
                        <li>
                            <a href="/views/hotCourse.jsp">热门</a>
                        </li>

                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown">官方课程<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="/official/JavabaseOfficial.jsp">Java基础</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="/official/JavawebOfficial.jsp">Java web</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="/official/SSMOfficial.jsp">SSM框架</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">Separated link</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">One more separated link</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <form action="/search/search" method="get" class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" />
                        </div>
                        <button type="submit" class="btn btn-default">搜索</button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <%
                            UserEntity user = (UserEntity) session.getAttribute("user");
                            if (user == null) {%>

                        <li>
                            <a href="../../login.jsp">登录</a>
                        </li>
                        <li>
                            <a href="../../register.jsp">注册</a>
                        </li>

                        <%
                        } else {
                        %>
                        <li>
                            <a href="/user/userinfo"><%=((UserEntity) session.getAttribute("user")).getUsername()%>
                                ，欢迎！</a>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown">功能<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="/user/userinfo">个人信息</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="/views/userMessage.jsp">我的消息</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="/note/mynote?userid=<%=((UserEntity) session.getAttribute("user")).getUserid()%>">我的笔记</a>
                                </li>
                                <li>
                                    <%if (((UserEntity) session.getAttribute("user")).getRole() == 0) {%>
                                    <a href="/note/mycourse?userid=<%=((UserEntity) session.getAttribute("user")).getUserid()%>">我的课程</a>
                                    <%}%>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="/views/noteWrite.jsp">添加笔记</a>
                                </li>
                                <li>
                                    <%if (((UserEntity) session.getAttribute("user")).getRole() == 0) {%>
                                    <a href="/views/courseEdit.jsp">编写课程</a>
                                    <%}%>
                                </li>
                                <li class="divider">
                                <li>
                                    <a href="/collection/mynotecoll?userid=<%=((UserEntity) session.getAttribute("user")).getUserid()%>">笔记收藏</a>
                                </li>
                                <li>
                                    <a href="/collection/mycoursecoll?userid=<%=((UserEntity) session.getAttribute("user")).getUserid()%>">课程收藏</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="/user/logoff">退出登录</a>
                                </li>
                            </ul>
                        </li>
                        <%}%>
                        <li>
                            <a>&nbsp;</a>
                        </li>
                    </ul>
                </div>

            </nav>
        </div>
    </div>
</div>

<script src="/croppic/jquery-2.1.3.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
