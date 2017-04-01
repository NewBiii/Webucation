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
    <title>用户注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link
            href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"
            rel="stylesheet">

</head>

<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column"> </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-2 column"></div>
        <div class="col-md-6 column">
            <h3 class="text-center">欢迎注册用户</h3>
            <h3 class="text-center"></h3>

            <form action="/user/register" method="post" class="form-horizontal" role="form">
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
                        <button type="submit" class="btn btn-default">注册</button>
                        <a href="login.jsp"><submit class="btn btn-default">返回登录</submit></a>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-4 column"></div>
    </div>
</div>
</body>
</html>
