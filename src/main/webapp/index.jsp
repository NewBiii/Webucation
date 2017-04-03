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
    <title>主页</title>
    <style type="text/css">
        body{
            background-image: url("images/1487315425856.jpg");
            background-size: 100%,100%;
        }
    </style>
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

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="container dropdown">
                <button class="btn btn-default">Action</button> <button data-toggle="dropdown" class="btn btn-default dropdown-toggle"><span class="caret"></span></button>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#">操作</a>
                    </li>
                    <li class="disabled">
                        <a href="#">另一操作</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="#">其它</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
