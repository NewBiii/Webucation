<%--
  Created by IntelliJ IDEA.
  User: NewBee
  Date: 2017/4/5
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" charset="utf-8" href="/dist/css/wangEditor.min.css">
    <title>笔记修改</title>
</head>
<body>
<jsp:include page="header.jsp" flush="true"/>
<br><br><br><br><br>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <form action="/note/upload" method="post" role="form">
                <div class="form-group">
                    <label for="exampleInputEmail1">笔记标题</label><input type="text" class="form-control" id="exampleInputEmail1" name="notename" value="${notename}" />
                </div>
                <div class="form-group">
                    <label for="textarea1">笔记内容</label>
                    <textarea type="input" id="textarea1" style="height:540px" name="notecontent">${notecontent}</textarea>
                </div>
                <%--<div class="form-group">
                    <label for="exampleInputFile">附件上传</label><input type="file" id="exampleInputFile" name="noteoption"/>
                    <p class="help-block">
                       有想要上传的文件吗？
                    </p>
                </div>--%>
                <button type="submit" class="btn btn-primary">提交修改</button>
                <a href="javascript:history.back(-1)" class="btn btn-default">取消修改</a>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript" charset="utf-8" src="../dist/js/lib/jquery-1.10.2.min.js"></script>
<script type="text/javascript" charset="utf-8" src="../dist/js/wangEditor.min.js"></script>

<!--这里引用jquery和wangEditor.js-->
<script type="text/javascript">
    var editor = new wangEditor('textarea1');
    // 上传图片（举例）
    editor.config.uploadImgUrl = '/upload/images';

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


    // 隐藏掉插入网络图片功能。该配置，只有在你正确配置了图片上传功能之后才可用。
    //editor.config.hideLinkImg = true;

    editor.create();
</script>
</body>
</html>
