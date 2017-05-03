<%@ page import="com.ssy.entity.UserEntity" %><%--
  Created by IntelliJ IDEA.
  Author: NewBiii
  Date: 2017/4/27
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/cropper/css/cropper.min.css">
    <link rel="stylesheet" href="/cropper/css/main.css">
    <link rel="stylesheet" href="/cropper/css/style.css">
    <title>我的消息</title>
</head>
<body>
<jsp:include page="/views/header.jsp" flush="true"/>
<br><br><br><br><br>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-2 column">
            <div style="background-color: #0C0C0C;">

                <div style="width: 98%;background-color: #ffffff">
                    <div class="" id="crop-avatar">

                        <!-- Current avatar -->
                        <div class="avatar-view" title="Change the avatar" style="width:160px;height:160px;">
                            <img src="/images/118701ttttt.jpg" alt="Avatar"/>
                        </div>

                        <!-- Cropping modal -->
                        <%-- <div class="modal fade" id="avatar-modal" aria-hidden="true" aria-labelledby="avatar-modal-label" role="dialog" tabindex="-1">
                             <div class="modal-dialog modal-lg">
                                 <div class="modal-content">
                                     <form class="avatar-form" action="/user/imgCut" enctype="multipart/form-data" method="post">
                                         <div class="modal-header">
                                             <button class="close" data-dismiss="modal" type="button">×</button>
                                             <h4 class="modal-title" id="avatar-modal-label">更换头像</h4>
                                         </div>
                                         <div class="modal-body">
                                             <div class="avatar-body">

                                                 <!-- Upload image and data -->
                                                 <div class="avatar-upload">
                                                     <input class="avatar-src" name="avatar_src" type="hidden"/>
                                                     <input class="avatar-data" name="avatar_data" type="hidden"/>
                                                     <label for="avatarInput">头像上传</label>
                                                     <input class="avatar-input " id="avatarInput" name="avatar_file" type="file" accept="image/*"/>
                                                 </div>

                                                 <!-- Crop and preview -->
                                                 <div class="row">
                                                     <div class="col-md-9">
                                                         <div class="avatar-wrapper"></div>
                                                     </div>
                                                     <div class="col-md-3">
                                                         <!--<div class="avatar-preview preview-lg"></div>-->
                                                         <div class="avatar-preview preview-md">
                                                             <label>160*160</label>
                                                         </div>
                                                         <div class="avatar-preview preview-sm" title="50*50">
                                                             <label>50*50</label>
                                                         </div>
                                                         <div class="avatar-preview preview-xs">
                                                             <label>30*30</label>
                                                         </div>
                                                         &lt;%&ndash; <div class="input-group input-group-sm">
                                                              <label class="input-group-addon" for="dataX">X</label>
                                                              <input type="text" class="form-control" id="dataX" name="x" placeholder="x" >
                                                              <span class="input-group-addon">px</span>
                                                          </div>
                                                          <div class="input-group input-group-sm">
                                                              <label class="input-group-addon" for="dataY">Y</label>
                                                              <input type="text" class="form-control" id="dataY" name="y" placeholder="y">
                                                              <span class="input-group-addon">px</span>
                                                          </div>
                                                          <div class="input-group input-group-sm">
                                                              <label class="input-group-addon" for="dataWidth">Width</label>
                                                              <input type="text" class="form-control" id="dataWidth" name="width" placeholder="width">
                                                              <span class="input-group-addon">px</span>
                                                          </div>
                                                          <div class="input-group input-group-sm">
                                                              <label class="input-group-addon" for="dataHeight">Height</label>
                                                              <input type="text" class="form-control" id="dataHeight" name="height" placeholder="height">
                                                              <span class="input-group-addon">px</span>
                                                          </div>
                                                          <div class="input-group input-group-sm">
                                                              <label class="input-group-addon" for="dataRotate">Rotate</label>
                                                              <input type="text" class="form-control" id="dataRotate" placeholder="rotate">
                                                              <span class="input-group-addon">deg</span>
                                                          </div>
                                                          <div class="input-group input-group-sm">
                                                              <label class="input-group-addon" for="dataScaleX">ScaleX</label>
                                                              <input type="text" class="form-control" id="dataScaleX" placeholder="scaleX">
                                                          </div>
                                                          <div class="input-group input-group-sm">
                                                              <label class="input-group-addon" for="dataScaleY">ScaleY</label>
                                                              <input type="text" class="form-control" id="dataScaleY" placeholder="scaleY">
                                                          </div>&ndash;%&gt;
                                                     </div>
                                                 </div>

                                                 <div class="row avatar-btns">
                                                     <div class="col-md-9">
                                                         <div class="btn-group">
                                                             <button class="btn btn-primary" data-method="rotate" data-option="-90" type="button" title="Rotate -90 degrees">向左旋转</button>
                                                             <button class="btn btn-primary" data-method="rotate" data-option="90" type="button" title="Rotate 90 degrees">向右旋转</button>
                                                         </div>
                                                         <div class="btn-group">
                                                             <button class="btn btn-primary" data-method="rotate" data-option="-15" type="button">-15deg</button>
                                                             <button class="btn btn-primary" data-method="rotate" data-option="15" type="button">15deg</button>
                                                         </div>
                                                         <div class="btn-group">
                                                             <button class="btn btn-primary" data-method="rotate" data-option="-30" type="button">-30deg</button>
                                                             <button class="btn btn-primary" data-method="rotate" data-option="30" type="button">30deg</button>
                                                         </div>
                                                         <div class="btn-group">
                                                             <button class="btn btn-primary" data-method="rotate" data-option="-45" type="button">-45deg</button>
                                                             <button class="btn btn-primary" data-method="rotate" data-option="45" type="button">45deg</button>
                                                         </div>
                                                     </div>
                                                     <div class="col-md-3">
                                                         <button class="btn btn-primary btn-block avatar-save" type="submit">确定</button>
                                                     </div>
                                                 </div>
                                             </div>
                                         </div>
                                         <!-- <div class="modal-footer">
                                           <button class="btn btn-default" data-dismiss="modal" type="button">Close</button>
                                         </div> -->
                                     </form>
                                 </div>
                             </div>
                         </div><!-- /.modal -->

                         <!-- Loading state -->
                         <div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>--%>
                    </div>

                    <table>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                    <div class="panel panel-default" style="width: 98%;">
                        <div class="panel-footer">
                            用户：
                        </div>
                        <div class="panel-body">
                            <%=((UserEntity) session.getAttribute("user")).getUsername()%>
                        </div>
                        <div class="panel-footer">
                            签名：
                        </div>
                        <div class="panel-body">
                            <%=((UserEntity) session.getAttribute("user")).getUserintroduce()%>
                        </div>
                        <div class="panel-footer">
                            性别：
                            <%if (((UserEntity) session.getAttribute("user")).getSex() == 0) {%>
                            汉子
                            <%} else {%>
                            女汉子
                            <%}%>
                        </div>
                        <div class="panel-footer">
                            邮箱：
                        </div>
                        <div class="panel-body">
                            <%=((UserEntity) session.getAttribute("user")).getUseremail()%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-10 column">
            <div class="row clearfix">
                <div class="list-group">
                    <a class="list-group-item active"><span class="badge">12</span>新的消息：</a>
                    <div class="list-group-item">
                        <div class="media well">
                            <a href="#" class="pull-left"><img src="/images/tttttttttttttttttt2.jpg" class="media-object img-circle" alt='' style="width: 80px;height: 80px;" /></a>
                            <div class="media-body">
                                <h4 class="media-heading">
                                    某某某
                                </h4>
                                为什么要编写这个教程？因为我在学习Git的过程中，买过书，也在网上Google了一堆Git相关的文章和教程，但令人失望的是，这些教程不是难得令人发指，就是简单得一笔带过，或者，只支离破碎地介绍Git的某几个命令，还有直接从Git手册粘贴帮助文档的，总之，初学者很难找到一个由浅入深，学完后能立刻上手的Git教程。
                            </div>
                        </div>
                    </div>
                    <a class="list-group-item active"><span class="badge">12</span>历史消息：</a>
                    <div class="list-group-item">

                    </div>
                </div>

                <div class="media well">
                    <a href="#" class="pull-left"><img src="v3/default7.jpg" class="media-object" alt='' /></a>
                    <div class="media-body">
                        <h4 class="media-heading">
                            某某某
                        </h4>为什么要编写这个教程？因为我在学习Git的过程中，买过书，也在网上Google了一堆Git相关的文章和教程，但令人失望的是，这些教程不是难得令人发指，就是简单得一笔带过，或者，只支离破碎地介绍Git的某几个命令，还有直接从Git手册粘贴帮助文档的，总之，初学者很难找到一个由浅入深，学完后能立刻上手的Git教程。
                        <div class="media">
                            <a href="#" class="pull-left"><img src="v3/default8.jpg" class="media-object" alt='' /></a>
                            <div class="media-body">
                                <h4 class="media-heading">
                                    Nested media heading
                                </h4> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
</div>

<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<script src="/cropper/js/cropper.min.js"></script>
<script src="/cropper/js/main.js"></script>
</body>
</html>
