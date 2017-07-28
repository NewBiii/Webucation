<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.ssy.entity.UserEntity" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: NewBee
  Date: 2017/4/6
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/cropper/css/cropper.min.css">
    <link rel="stylesheet" href="/cropper/css/main.css">
    <link rel="stylesheet" href="/cropper/css/style.css">

    <title>个人信息</title>
</head>
<body>
<jsp:include page="/views/header.jsp" flush="true"/>
<br><br><br><br><br>

            <div style="background-color: #0C0C0C;">

                <div style="width: 98%;background-color: #ffffff">
                    <div class="" id="crop-avatar">

                        <!-- Current avatar -->
                        <div class="avatar-view" title="Change the avatar" style="width:160px;height:160px;">
                            <img src="<%=((UserEntity)session.getAttribute("user")).getUserpicture()%>" alt="Avatar"/>
                        </div>

                        <!-- Cropping modal -->
                        <div class="modal fade" id="avatar-modal" aria-hidden="true"
                             aria-labelledby="avatar-modal-label" role="dialog" tabindex="-1">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <form class="avatar-form" action="/user/imgCut" enctype="multipart/form-data"
                                          method="post">
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
                                                    <input class="avatar-input " id="avatarInput" name="avatar_file"
                                                           type="file" accept="image/*"/>
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
                                                        <%-- <div class="input-group input-group-sm">
                                                             <label class="input-group-addon" for="dataX">X</label>
                                                             <input type="text" class="form-control" id="dataX" name="x" placeholder="x" >
                                                             <span class="input-group-addon">px</span>
<<<<<<< HEAD
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
=======
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
>>>>>>> e240622d33632ff5c40a872abdd66b17d7ed185b
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
                                                         </div>--%>
                                                    </div>
                                                </div>
<<<<<<< HEAD

                                                <div class="row avatar-btns">
                                                    <div class="col-md-9">
                                                        <div class="btn-group">
                                                            <button class="btn btn-primary" data-method="rotate"
                                                                    data-option="-90" type="button"
                                                                    title="Rotate -90 degrees">向左旋转
                                                            </button>
                                                            <button class="btn btn-primary" data-method="rotate"
                                                                    data-option="90" type="button"
                                                                    title="Rotate 90 degrees">向右旋转
                                                            </button>
                                                        </div>
                                                        <div class="btn-group">
                                                            <button class="btn btn-primary" data-method="rotate"
                                                                    data-option="-15" type="button">-15deg
                                                            </button>
                                                            <button class="btn btn-primary" data-method="rotate"
                                                                    data-option="15" type="button">15deg
                                                            </button>
                                                        </div>
                                                        <div class="btn-group">
                                                            <button class="btn btn-primary" data-method="rotate"
                                                                    data-option="-30" type="button">-30deg
                                                            </button>
                                                            <button class="btn btn-primary" data-method="rotate"
                                                                    data-option="30" type="button">30deg
                                                            </button>
                                                        </div>
                                                        <div class="btn-group">
                                                            <button class="btn btn-primary" data-method="rotate"
                                                                    data-option="-45" type="button">-45deg
                                                            </button>
                                                            <button class="btn btn-primary" data-method="rotate"
                                                                    data-option="45" type="button">45deg
                                                            </button>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <button class="btn btn-primary btn-block avatar-save"
                                                                type="submit">确定
                                                        </button>
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

=======

                                                <div class="row avatar-btns">
                                                    <div class="col-md-9">
                                                        <div class="btn-group">
                                                            <button class="btn btn-primary" data-method="rotate"
                                                                    data-option="-90" type="button"
                                                                    title="Rotate -90 degrees">向左旋转
                                                            </button>
                                                            <button class="btn btn-primary" data-method="rotate"
                                                                    data-option="90" type="button"
                                                                    title="Rotate 90 degrees">向右旋转
                                                            </button>
                                                        </div>
                                                        <div class="btn-group">
                                                            <button class="btn btn-primary" data-method="rotate"
                                                                    data-option="-15" type="button">-15deg
                                                            </button>
                                                            <button class="btn btn-primary" data-method="rotate"
                                                                    data-option="15" type="button">15deg
                                                            </button>
                                                        </div>
                                                        <div class="btn-group">
                                                            <button class="btn btn-primary" data-method="rotate"
                                                                    data-option="-30" type="button">-30deg
                                                            </button>
                                                            <button class="btn btn-primary" data-method="rotate"
                                                                    data-option="30" type="button">30deg
                                                            </button>
                                                        </div>
                                                        <div class="btn-group">
                                                            <button class="btn btn-primary" data-method="rotate"
                                                                    data-option="-45" type="button">-45deg
                                                            </button>
                                                            <button class="btn btn-primary" data-method="rotate"
                                                                    data-option="45" type="button">45deg
                                                            </button>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <button class="btn btn-primary btn-block avatar-save"
                                                                type="submit">确定
                                                        </button>
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

>>>>>>> e240622d33632ff5c40a872abdd66b17d7ed185b
                        <!-- Loading state -->
                        <div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>
                    </div>

                    <table>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                    <div class="panel panel-default" style="width: 98%;">

                        <a class="list-group-item active">用户：</a>
                        <div class="panel-body">
                            <%=((UserEntity) session.getAttribute("user")).getUsername()%>
                        </div>
                        <a class="list-group-item active">签名：</a>
                        <div class="panel-body">
                            <%=((UserEntity) session.getAttribute("user")).getUserintroduce()%>
                        </div>
                        <a class="list-group-item active">
                            性别：
                            <%if (((UserEntity) session.getAttribute("user")).getSex() == 0) {%>
                            汉子
                            <%} else {%>
                            女汉子
                            <%}%>
                        </a>
                        <a class="list-group-item active"> 邮箱：</a>
                        <div class="panel-body">
                            <%=((UserEntity) session.getAttribute("user")).getUseremail()%>
                        </div>
                        <a href="#" class="list-group-item active">编辑</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-10 column">
            <div class="row clearfix">
                <div align="center">
                    <div style="width: 96%;" align="left">
                        <div class="list-group">
                            <a class="list-group-item active"><span class="badge">${notesize}</span>最近编写的笔记：</a>
                            <div class="list-group-item">
                                <c:forEach items="${note}" var="note" begin="0" end="2" step="1">
                                    <blockquote>
                                        <p>
                                            <a href="/note/noteShow?noteid=${note.noteid}"> ${note.notename}</a>
                                        </p>
                                        <small><fmt:formatDate value="${note.notetime}" type="date"
                                                               dateStyle="long"/></small>
                                    </blockquote>
                                </c:forEach>
                                <c:if test="${notesize>0}">
                                    <a href="/note/mynote?userid=<%=((UserEntity) session.getAttribute("user")).getUserid()%>">进入我的笔记</a>
                                </c:if>
                            </div>
                            <%if (((UserEntity) session.getAttribute("user")).getRole() == 0) {%>
                            <a class="list-group-item active"><span class="badge">${coursesize}</span>最近编写的课程：</a>
                            <div class="list-group-item">
                                <c:forEach items="${course}" var="course" begin="0" end="2" step="1">
                                    <blockquote>
                                        <p>
                                            <a href="/note/noteShow?noteid=${course.noteid}"> ${course.notename}</a>
                                        </p>
                                        <small><fmt:formatDate value="${course.notetime}" type="date"
                                                               dateStyle="long"/></small>
                                    </blockquote>
                                </c:forEach>
                                <c:if test="${notesize>0}">
                                    <a href="/note/mycourse?userid=<%=((UserEntity) session.getAttribute("user")).getUserid()%>">进入我的课程</a>
                                </c:if>
                            </div>
                            <%}%>
                            <a class="list-group-item active"><span class="badge">${collnotesize}</span>最近收藏的笔记：</a>
                            <div class="list-group-item">
                                <c:forEach items="${collnote}" var="collnote" begin="0" end="2" step="1">
                                    <blockquote>
                                        <p>
                                            <a href="/note/noteShow?noteid=${collnote.noteid}"> ${collnote.notename}</a>
                                        </p>
                                        <small><fmt:formatDate value="${collnote.notetime}" type="date"
                                                               dateStyle="long"/></small>
                                    </blockquote>
                                </c:forEach>
                                <c:if test="${notesize>0}">
                                    <a href="/collection/mynotecoll?userid=<%=((UserEntity) session.getAttribute("user")).getUserid()%>">进入笔记收藏</a>
                                </c:if>
                            </div>
                            <a class="list-group-item active"><span class="badge">${collcoursesize}</span>最近收藏的课程：</a>
                            <div class="list-group-item">
                                <c:forEach items="${collcourse}" var="collcourse" begin="0" end="2" step="1">
                                    <blockquote>
                                        <p>
                                            <a href="/note/noteShow?noteid=${collcourse.noteid}"> ${collcourse.notename}</a>
                                        </p>
                                        <small><fmt:formatDate value="${collcourse.notetime}" type="date"
                                                               dateStyle="long"/></small>
                                    </blockquote>
                                </c:forEach>
                                <c:if test="${collcoursesize>0}">
                                    <a href="/collection/mycoursecoll?userid=<%=((UserEntity) session.getAttribute("user")).getUserid()%>">进入课程收藏</a>
                                </c:if>
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
