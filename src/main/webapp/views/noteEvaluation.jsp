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
    <%--<style>
        body,div,ul,li,p{margin:0;padding:0;}
        body{color:#666;font:12px/1.5 Arial;}
        ul{list-style-type:none;}
        #star{position:relative;width:600px;margin:10px auto;}
        #star ul,#star span{float:left;display:inline;height:19px;line-height:19px;}
        #star ul{margin:0 10px;}
        #star li{float:left;width:24px;cursor:pointer;text-indent:-9999px;background:url(images/1487315425856.jpg) no-repeat;}
        #star strong{color:#f60;padding-left:10px;}
        #star li.on{background-position:0 -28px;}
        #star p{position:absolute;top:20px;width:159px;height:60px;display:none;background:url(images/0fd1c40422ebc64dbf204ccf7ff02052.jpg) no-repeat;padding:7px 10px 0;}
        #star p em{color:#f60;display:block;font-style:normal;}
    </style>

    <script type="text/javascript">
        window.onload = function ()
        {
            var oStar = document.getElementById("star");
            var aLi = oStar.getElementsByTagName("li");
            var oUl = oStar.getElementsByTagName("ul")[0];
            var oSpan = oStar.getElementsByTagName("span")[1];
            var oP = oStar.getElementsByTagName("p")[0];
            var i = iScore = iStar = 0;
            var aMsg = [
                "很不满意|差得太离谱，与卖家描述的严重不符，非常不满",
                "不满意|部分有破损，与卖家描述的不符，不满意",
                "一般|质量一般，没有卖家描述的那么好",
                "满意|质量不错，与卖家描述的基本一致，还是挺满意的",
                "非常满意|质量非常好，与卖家描述的完全一致，非常满意"
            ]
            for (i = 1; i <= aLi.length; i++)
            {
                aLi[i - 1].index = i;
                //鼠标移过显示分数
                aLi[i - 1].onmouseover = function ()
                {
                    fnPoint(this.index);
                    //浮动层显示
                    oP.style.display = "block";
                    //计算浮动层位置
                    oP.style.left = oUl.offsetLeft + this.index * this.offsetWidth - 104 + "px";
                    //匹配浮动层文字内容
                    oP.innerHTML = "<em><b>" + this.index + "</b> 分 " + aMsg[this.index - 1].match(/(.+)\|/)[1] + "</em>" + aMsg[this.index - 1].match(/\|(.+)/)[1]
                };
                //鼠标离开后恢复上次评分
                aLi[i - 1].onmouseout = function ()
                {
                    fnPoint();
                    //关闭浮动层
                    oP.style.display = "none"
                };
                //点击后进行评分处理
                aLi[i - 1].onclick = function ()
                {
                    iStar = this.index;
                    oP.style.display = "none";
                    oSpan.innerHTML = "<strong>" + (this.index) + " 分</strong> (" + aMsg[this.index - 1].match(/\|(.+)/)[1] + ")"
                }
            }
            //评分处理
            function fnPoint(iArg)
            {
                //分数赋值
                iScore = iArg || iStar;
                for (i = 0; i < aLi.length; i++) aLi[i].className = i < iScore ? "on" : "";
            }
        };
    </script>--%>
    <%--<script language="JavaScript">

        function doEvainsert() {
            var oStar = document.getElementById("star");
            var aLi = oStar.getElementsByTagName("li")[4];

            if(aLi == "☆"){
                document.write("<p>5xing</p>")
            }
            else {
                document.write("<p>bushi</p>")
            }
            document.write("<p>aLi</p>");
            var i = iScore = iStar = 0;
            iStar = this.index;

            iScore = iArg || iStar;
            for (i = 0; i < aLi.length; i++) aLi[i].className = i < iScore ? "on" : "";

           /* this.action = "/user/login";
            login.submit();*/
        }

    </script>--%>
</head>
<body>
<div class="row clearfix">
    <div class="col-md-12 column">
        <a id="modal-423533" href="#modal-container-423533" role="button" class="btn btn-primary"
           data-toggle="modal">评价</a>

        <div class="modal fade" id="modal-container-423533" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true" align="left">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" id="myModalLabel">
                            觉得这篇笔记对你有帮助么
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
                        </ul>
                    </div>
                    <div class="modal-body">
                        <label for="exampleInputEmail1">评价</label>
                        <input type="text" class="form-control" id="exampleInputEmail1"/>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" class="btn btn-primary" onclick="doEvainsert()">保存</button>
                        </div>
                    </div>

                </div>

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
            $(this).text(wjx_s).prevAll().text(wjx_s);
            $(this).nextAll().text(wjx_k);

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
        });
    };


</script>
</body>
</html>
