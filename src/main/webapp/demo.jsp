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
    <title>测试页</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="/cropper/css/cropper.min.css">
    <link rel="stylesheet" href="/cropper/css/main.css">
    <link rel="stylesheet" href="/cropper/css/style.css">

</head>
<body>

<div class="container" id="crop-avatar">

    <!-- Current avatar -->
    <div class="avatar-view" title="Change the avatar">
        <img src="/images/118701ttttt.jpg" alt="Avatar"/>
    </div>

    <!-- Cropping modal -->
    <div class="modal fade" id="avatar-modal" aria-hidden="true" aria-labelledby="avatar-modal-label" role="dialog" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <form class="avatar-form" action="crop.php" enctype="multipart/form-data" method="post">
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
                                   <%-- <div class="input-group input-group-sm">
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
                                    </div>--%>
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
    <div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>
</div>

<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="/cropper/js/cropper.min.js"></script>
<script src="/cropper/js/main.js"></script>

</body>
</html>
