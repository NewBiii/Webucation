<%--
  Created by IntelliJ IDEA.
  User: NewBee
  Date: 2017/4/3
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">


    <title>记笔记</title>
</head>
<body>
<jsp:include page="header.jsp" flush="true"/>
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
            <form action="/note/submit" method="post" role="form">
                <div class="form-group">
                    <label for="exampleInputEmail1">笔记标题</label><input type="text" class="form-control" id="exampleInputEmail1" name="noteid"/>
                </div>
                <div class="form-group" contenteditable="FALSE">
                    <label for="exampleInputPassword1">笔记内容</label><textarea type="" style="height:50%;" class="form-control" id="exampleInputPassword1" name="notecontent"></textarea>
                </div>
                    <div class="form-group">
                        <label for="exampleInputFile">附件上传</label><input type="file" id="exampleInputFile" name="noteoption"/>
                        <p class="help-block">
                           有想要上传的文件吗？
                        </p>
                    </div>
                 <button type="submit" class="btn btn-default">提交</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>
