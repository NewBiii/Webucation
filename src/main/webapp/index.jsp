<%--
  Created by IntelliJ IDEA.
  User: NewBee
  Date: 2017/3/31
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cdn.bootcss.com/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <title>SSY课程学习</title>

</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp" flush="true"/>
<br><br><br><br>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">

            <div class="jumbotron">
                <h1>
                   SSY课程学习
                </h1>
                <p>
                   学习什么的
                </p>
                <p>
                    <a class="btn btn-primary btn-large" href="#">了解更多</a>
                </p>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img alt="300x200" src="/images/8b483d4d60304b3a553d58f3934a4383.jpg" />
                        <div class="caption">
                            <h3>
                                Bootstrap
                            </h3>
                            <p>
                                Bootstrap，来自 Twitter，是目前最受欢迎的前端框架。Bootstrap 是基于 HTML、CSS、JAVASCRIPT 的，它简洁灵活，使得 Web 开发更加快捷。
                            </p>
                            <p>
                                <a class="btn btn-primary" href="http://www.runoob.com/bootstrap/bootstrap-tutorial.html">了解更多</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img alt="300x200" src="/images/118701.jpg" />
                        <div class="caption">
                            <h3>
                                HTML5
                            </h3>
                            <p>
                                HTML5是HTML最新的修订版本，2014年10月由万维网联盟（W3C）完成标准制定。
                                HTML5的设计目的是为了在移动设备上支持多媒体。
                            </p>
                            <p>
                                <a class="btn btn-primary" href="http://www.runoob.com/html/html5-intro.html">学习H5</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img alt="300x200" src="/images/e95f9a13f4e56de1139f918ea3abb964.jpg" />
                        <div class="caption">
                            <h3>
                                CSS3
                            </h3>
                            <p>
                                CSS 用于控制网页的样式和布局。
                                CSS3 是最新的 CSS 标准。<br>
                                对CSS3已完全向后兼容，所以你就不必改变现有的设计。
                            </p>
                            <p>
                                <a class="btn btn-primary" href="http://www.runoob.com/css3/css3-tutorial.html">学习CSS3</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img alt="300x200" src="/images/f36947322b98fd81a218366349351fc0.jpg" />
                        <div class="caption">
                            <h3>
                                Git
                            </h3>
                            <p>
                                Git是一个开源的分布式版本控制系统，用于敏捷高效地处理任何或小或大的项目。
                                Git 与常用的版本控制工具 CVS, Subversion 等不同，它采用了分布式版本库的方式，不必服务器端软件支持。
                            </p>
                            <p>
                                <a class="btn btn-primary" href="http://www.runoob.com/git/git-tutorial.html">了解Git</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img alt="300x200" src="/images/dfe092db405cb2fb909f8a73e42834ae.jpg" />
                        <div class="caption">
                            <h3>
                                浏览器信息
                            </h3>
                            <p>
                                对于网站开发人员来说，浏览器信息和统计数据都是非常重要的。<br>
                                对于网站开发人员来说，浏览器信息和统计数据都是非常重要的。
                            </p>
                            <p>
                                <a class="btn btn-primary" href="http://www.runoob.com/browsers/browser-information.html">了解更多</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img alt="300x200" src="/images/81310.jpg" />
                        <div class="caption">
                            <h3>
                                IntelliJ IDEA
                            </h3>
                            <p>
                                IntelliJ在业界被公认为最好的java开发工具之一。
                                尤其在智能代码助手、代码自动提示、重构、J2EE支持、JUnit、CVS整合、代码分析、 创新的GUI设计等方面的功能可以说是超常的。
                            </p>
                            <p>
                                <a class="btn btn-primary" href="https://www.jetbrains.com/idea/">Idea官网</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
</body>
</html>
