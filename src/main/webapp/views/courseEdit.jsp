<%--
  Created by IntelliJ IDEA.
  User: NewBee
  Date: 2017/4/5
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" charset="utf-8" href="/dist/css/wangEditor.min.css">

    <title>编课程</title>
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
            <form action="/course/edit" method="post" role="form" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="exampleInputEmail1">课程标题</label><input type="text" class="form-control" id="exampleInputEmail1" name="noteid"/>
                </div>
                <div class="form-group">
                    <label for="textarea1">课程内容</label>
                    <%--  <textarea style="height:50%;" class="form-control" id="exampleInputPassword1" name="notecontent"></textarea>--%>
                    <textarea id="textarea1" style="height:400px;max-height:500px;"></textarea>
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

<!--引入jquery和wangEditor.js-->   <!--注意：javascript必须放在body最后，否则可能会出现问题-->
<script type="text/javascript" charset="utf-8" src="../dist/js/lib/jquery-1.10.2.min.js"></script>
<script type="text/javascript" charset="utf-8" src="../dist/js/wangEditor.min.js"></script>

<!--这里引用jquery和wangEditor.js-->
<script type="text/javascript">
    var editor = new wangEditor('textarea1');
    // 上传图片（举例）
    editor.config.uploadImgUrl = '/upload';

    // 配置自定义参数（举例）
    editor.config.uploadParams = {
        token: 'abcdefg',
        user: 'wangfupeng1988'
    };

    // 设置 headers（举例）
    editor.config.uploadHeaders = {
        'Accept' : 'text/x-json'
    };

    editor.config.uploadImgFileName = 'myFileName';

    editor.create();
</script>
</body>
</html>
