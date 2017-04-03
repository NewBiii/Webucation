<%--
  Created by IntelliJ IDEA.
  User: NewBee
  Date: 2017/3/31
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<html>
<head>
    <title>用户登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link
            href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"
            rel="stylesheet">

    <script language="JavaScript">

        function dologin(login) {
            login.action = "/user/login";
            login.submit();
        }


    </script>

</head>

<body>
<jsp:include page="views/header.jsp" flush="true"/>
<div>
    <table>
        <tr><td>&nbsp;</td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>&nbsp;</td></tr>
    </table>
</div>
<div>
    <table>
        <tr><td>&nbsp;</td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>&nbsp;</td></tr>
    </table>
</div>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column"> </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-2 column"></div>
        <div class="col-md-6 column">
            <h3 class="text-center">欢迎使用网络学习系统</h3>
            <h3 class="text-center"></h3>

            <form name="login" method="post" class="form-horizontal" role="form">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">账户</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputEmail3" name="userid"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword3" name="userpassword"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label><input type="checkbox" />记住密码</label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default" onclick="dologin(login)">登录</button>
                        <a href="register.jsp">注册</a>
                    </div>

                </div>
            </form>
        </div>
        <div class="col-md-4 column"></div>
    </div>
</div>
</body>
</html>
