<%--
  Created by IntelliJ IDEA.
  User: NewBee
  Date: 2017/3/31
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<html>
<head>
    <title>用户注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- 引入 Bootstrap -->
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="/bootstrapvalidator/css/bootstrapValidator.css" media="all">

</head>

<body>
<jsp:include page="/views/header.jsp" flush="true"/>
<br><br><br><br><br>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column"></div>
    </div>
    <div class="row clearfix">
        <div class="col-md-2 column"></div>
        <div class="col-md-6 column">
            <h3 class="text-center">欢迎注册用户</h3>
            <br>
            <form id="resignform" action="/user/register" method="post" class="form-horizontal layui-form" name="form"
                  role="form">
                <div class="form-group">
                    <label for="username" class="col-sm-2 control-label"><font color="#FF0000">*</font>昵称</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="username" name="username"/>
                        <span class="tip" style="color: #ff0000;display: none"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="userid" class="col-sm-2 control-label"><font color="#FF0000">*</font>账户</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="userid" name="userid"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="userpassword" class="col-sm-2 control-label"><font color="#FF0000">*</font>密码</label>
                    <div class="col-sm-10">
                        <input len='10' type="password" class="form-control" id="userpassword" name="userpassword"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="userpassword2" class="col-sm-2 control-label"><font
                            color="#FF0000">*</font>确认密码</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="userpassword2" name="userpassword2"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">性别</label>
                    <div class="col-sm-10">
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <input type="radio" name="sex" value="0" title="男">
                                <input type="radio" name="sex" value="1" title="女">
                                <input type="radio" name="sex" value="2" title="保密" checked="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="userintroduce" class="col-sm-2 control-label">签名</label>
                    <div class="col-sm-10">
                        <textarea style="height: 70px;" class="form-control" id="userintroduce"
                                  name="userintroduce"></textarea>
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
                    <label for="form_datetime" class="col-sm-2 control-label">生日</label>
                    <div class="col-sm-10">
                        <input id="form_datetime" type="text" class="form-control" onclick="layui.laydate({elem: this})"/>
                        <span class="add-on"><i class="icon-th"></i></span>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="btn btn-primary" id="demo1">注册</div>
                        <a href="/login.jsp" class="btn btn-default">返回登录</a>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-4 column"></div>
    </div>
</div>

<script src="/js/jquery-2.1.3.min.js"></script>
<script src="/bootstrap/js/bootstrap.js"></script>
<script src="/layui/layui.js" charset="utf-8"></script>
<script src="/bootstrapvalidator/js/bootstrapValidator.js" charset="utf-8"></script>

<script>
    $(function () {
        function empty_check(name, text) {
            var select = 'form input[name="' + name + '"]';
            var input = $(select).val();
            if (input == '') {
                $(select).css('border', '1px solid #ff0000');
                $(select).parent('div').children('.tip').show().text(text);
            } else {
                $(select).css('border', '1px solid #ccc');
                $(select).parent('div').children('.tip').hide().text(text);
            }
        }

        function length_check(name, length, text) {
            var len = length;
            var select = 'form input[name="' + name + '"]';
            var input = $(select).val();
            if (input.length > len) {
                $(select).css('border', '1px solid #ff0000');
                $(select).parent('div').children('.tip').show().text(text);
                return 1;
            } else {
                $(select).css('border', '1px solid #ccc');
                $(select).parent('div').children('.tip').hide().text(text);
                return 0;
            }

        }


        $("form input").blur(function () {

            if (!length_check('username', 10, '不能超过10个字')) {
                empty_check('username', '昵称不能为空哟！');
            }

        })

        $('#demo1').click(function () {
            var allow = 0;
            var select = 'form input[name="' + 'username' + '"]';
            var input = $(select).val();
            $('#resignform .tip').each(function (k, v) {
                if ($(this).css('display') == 'none') {
                    allow = 1;
                }
            })
            if (input.length < 1) {
                allow = 0;
            }
            if (allow == 1) {
                $('#resignform').submit();
            } else {
                if (!length_check('username', 10, '不能超过10个字')) {
                    empty_check('username', '昵称不能为空哟！');
                }
            }
        })

    });

</script>
<script>
    layui.use(['form', 'layedit', 'laydate'], function () {
        var form = layui.form()
            , layer = layui.layer
            , layedit = layui.layedit
            , laydate = layui.laydate;
    });
</script>
</body>
</html>

