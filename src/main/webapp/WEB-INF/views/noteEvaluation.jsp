<%--
  Created by IntelliJ IDEA.
  User: NewBee
  Date: 2017/4/4
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cdn.bootcss.com/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet"/>
    <style>
        .comment {
            font-size: 40px;
            color: #4682b4;
        }

        .comment li {
            float: left;
        }

        ul {
            list-style: none;
        }
    </style>
</head>
<body>
<div class="row clearfix">
    <div class="col-md-12 column">
        <a id="modal-423533" href="#modal-container-423533" role="button" class="btn btn-primary"
           data-toggle="modal">评价</a>

        <div class="modal fade" id="modal-container-423533" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true" align="left">
            <div class="modal-dialog">
                <form action="/evaluation/evaluation" name="evaluation" method="post" role="form">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel">
                                觉得这篇笔记对你有帮助么?
                            </h4>
                        </div>
                        <div class="modal-header" id="star">
                            <label for="exampleInputEmail1">评分</label>
                            <ul class="comment">
                                <li>☆</li>
                                <li>☆</li>
                                <li>☆</li>
                                <li>☆</li>
                                <li>☆</li>
                                <input type="hidden" value="0" id="stars" name="stars"/>
                            </ul>
                        </div>
                        <div class="modal-body">
                            <label for="exampleInputEmail1">评价</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" name="evaluationcontent"/>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="submit" class="btn btn-primary">保存</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">
    window.onload = function () {
        var wjx_s = "★";
        var wjx_k = "☆";
        //1. 获取li,注册mouseenter事件
        $(".comment").children("li").mouseenter(function () {
            //2. 让当前元素变实心，前面的兄弟元素变实心，后面的兄弟变空心
            $(this).text(wjx_s).attr('act', 1).prevAll().text(wjx_s).attr('act', 1);


            $(this).nextAll().text(wjx_k).attr('act', 0);

        });

        //3. 给ul注册离开事件
        $(".comment").mouseleave(function () {
            $(".comment li").text(wjx_k);

            //5. 找到添加了active这个类的li
            $(".comment li.active").text(wjx_s).prevAll().text(wjx_s);
        });

        //4 给所有的li注册点击事件
        $(".comment li").click(function () {
            $(this).addClass("active").siblings().removeClass("active");
            $('#stars').attr('value', $(this).index() + 1)
        });
    };


</script>
</body>
</html>
