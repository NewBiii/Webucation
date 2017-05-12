<%--
  Created by IntelliJ IDEA.
  Author: NewBiii
  Date: 2017/5/2
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/layui/css/layui.css">
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div id="top-nav">
    <jsp:include page="/views/header.jsp" flush="true"/>
</div>
<div>
    <ul class="layui-nav layui-nav-tree layui-nav-side left-nav" lay-filter="test">
        <!-- 侧边导航: <ul class="layui-nav layui-nav-tree layui-nav-side"> -->
        <li class="layui-nav-item">
            <a class="hid-btn">＜＜收起导航栏＜＜</a>
        </li>
        <li class="layui-nav-item">
            <a href="#">Java基础</a>
            <dl class="layui-nav-child">
                <dd><a href="/official/JavabaseOfficial1.jsp">Java简介</a></dd>
                <dd><a href="/official/JavabaseOfficial2.jsp">Java 开发环境配置</a></dd>
                <dd><a href="/official/JavabaseOfficial3.jsp">Java 基础语法</a></dd>
                <dd><a href="/official/JavabaseOfficial4.jsp">Java 对象和类</a></dd>
                <dd><a href="/official/JavabaseOfficial5.jsp">Java 基本数据类型</a></dd>
                <dd><a href="/official/JavabaseOfficial6.jsp">Java 变量类型</a></dd>
                <dd><a href="/official/JavabaseOfficial5.jsp">Java 修饰符</a></dd>
                <dd><a href="/official/JavabaseOfficial5.jsp">Java 运算符</a></dd>
                <dd><a href="/official/JavabaseOfficial5.jsp">Java 循环结构 – for, while 及 do…while</a></dd>
                <dd><a href="/official/JavabaseOfficial5.jsp">Java 分支结构 – if…else/switch</a></dd>
                <dd><a href="/official/JavabaseOfficial5.jsp">Java Number & Math 类</a></dd>
                <dd><a href="/official/JavabaseOfficial5.jsp">Java Character 类</a></dd>
                <dd><a href="/official/JavabaseOfficial5.jsp">Java String 类</a></dd>
                <dd><a href="/official/JavabaseOfficial5.jsp">Java 数组</a></dd>
                <dd><a href="/official/JavabaseOfficial5.jsp">Java 日期时间</a></dd>
                <dd><a href="/official/JavabaseOfficial5.jsp">Java 正则表达式</a></dd>
                <dd><a href="/official/JavabaseOfficial5.jsp">Java 方法</a></dd>
                <dd><a href="/official/JavabaseOfficial5.jsp">Java 流(Stream)、文件(File)和IO</a></dd>
                <dd><a href="/official/JavabaseOfficial5.jsp">Java Scanner 类</a></dd>
                <dd><a href="/official/JavabaseOfficial5.jsp">Java 异常处理</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">Java面向对象</a>
            <dl class="layui-nav-child">
                <dd><a href="#">Java Override/Overload</a></dd>
                <dd><a href="">Java 多态</a></dd>
                <dd><a href="">Java 抽象类</a></dd>
                <dd><a href="">Java 封装</a></dd>
                <dd><a href="">Java 接口</a></dd>
                <dd><a href="">Java 包(package)</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">Java进阶</a>
            <dl class="layui-nav-child">
                <dd><a href="#">Java 数据结构</a></dd>
                <dd><a href="">Java 集合框架</a></dd>
                <dd><a href="">Java 泛型</a></dd>
                <dd><a href="">Java 序列化</a></dd>
                <dd><a href="">Java 网络编程</a></dd>
                <dd><a href="">Java 发送邮件</a></dd>
                <dd><a href="">Java 多线程编程</a></dd>
                <dd><a href="">Java Applet 基础</a></dd>
                <dd><a href="">Java 文档注释</a></dd>
                <dd><a href="">Java 实例</a></dd>
                <dd><a href="">Java 8 新特性</a></dd>
                <dd><a href="">Java MySQL 连接</a></dd>
            </dl>
        </li>
    </ul>
    <br>
    <br>
    <br>
    <br>
    <ul class="layui-nav layui-nav-tree layui-my-nav" lay-filter="test" style="position: fixed; top: 51px;z-index: 2;">
        <li class="layui-nav-item">
            <a class="show-btn">＞＞展开导航栏＞＞</a>
        </li>
    </ul>
</div>

<script src="/croppic/jquery-2.1.3.min.js"></script>
<script src="../layui/layui.js"></script>
<script src="/js/my.js"></script>
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element();
    });
</script>
</body>
</html>
