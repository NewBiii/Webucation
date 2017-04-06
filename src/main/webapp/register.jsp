<%--suppress ALL --%>
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
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-datetimepicker.min.css">
    <link href="less/build_standalone.less">

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
<div/>
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
                    <label for="username" class="col-sm-2 control-label">昵称</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="username" name="username"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="userid" class="col-sm-2 control-label"><font color="#FF0000">*</font>账户</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="userid" name="userid"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label"><font color="#FF0000">*</font>密码</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword3" name="userpassword"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword4" class="col-sm-2 control-label"><font color="#FF0000">*</font>确认密码</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword4" name="userpassword2"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword4" class="col-sm-2 control-label">性别</label>
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label><input type="checkbox" name="check1"/>保密</label>
                            <label><input type="checkbox" />男</label>
                            <label><input type="checkbox" />女</label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="userintroduce" class="col-sm-2 control-label">签名</label>
                    <div class="col-sm-10">
                        <textarea style="height: 60px;" class="form-control" id="userintroduce" name="userintroduce"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="useremail" class="col-sm-2 control-label">E-mail</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" id="useremail" name="useremail"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="userphoneNum" class="col-sm-2 control-label">手机</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="userphoneNum" name="userphoneNum"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="userphoneNum" class="col-sm-2 control-label">生日</label>
                    <div class="col-sm-10">
                        <input id="form_datetime" type="text" class="form-control">
                        <span class="add-on"><i class="icon-th"></i></span>
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
</div>
<script type="text/javascript" src="js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="js/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
    $(".form_datetime").datetimepicker({
        format: "yyyy MM dd"
    });
</script>
</body>
</html>

