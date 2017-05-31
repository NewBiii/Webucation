<%--
  Created by IntelliJ IDEA.
  Author: NewBiii
  Date: 2017/5/24
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <title>视频</title>
</head>
<body>
<jsp:include page="/views/header.jsp" flush="true"/>
<br><br><br><br><br>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <video width="640" height="480" controls="controls">
                <source src="movie.ogg" type="video/ogg">
                <source src="/video/Assassins Creed V pas.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
            <br><br>
            <video width="640" height="480" controls="controls">
                <source src="/video/Wicher3CG.mp4" type="video/ogg">
                <source src="/video/Wicher3CG.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </div>
    </div>
</div>
</body>
</html>
