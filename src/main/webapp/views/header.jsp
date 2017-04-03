<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cdn.bootcss.com/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />

</head>

<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="../../index.jsp">SSY网络课程学习</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="../../index.jsp">主页</a>
                        </li>
                        <li>
                            <a href="/views/search.jsp">热门课程</a>
                        </li>
                        <li>
                            <a href="#">热门笔记</a>
                        </li>

                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown">官方课程<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="../../login.jsp">Java基础</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="../../login.jsp">Java web</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">SSM框架</a>
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
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" />
                        </div> <button type="submit" class="btn btn-default">搜索</button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">

                        <li>
                            <a href="../../login.jsp">登录</a>
                        </li>
                        <li>
                            <a href="../../register.jsp">注册</a>
                        </li>
                        <li>
                            <a>&nbsp;</a>

                        </li>
                    </ul>
                </div>

            </nav>
        </div>
    </div>
</div>

<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>