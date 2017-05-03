<%--
  Created by IntelliJ IDEA.
  User: NewBiii
  Date: 2017/4/14
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Java 开发环境配置</title>
    <link rel="stylesheet" href="/layui/css/layui.css">
</head>
<body>
<jsp:include page="/official/navigationBar.jsp" flush="true"/>

<div class="my-content" style="position: absolute;">
    <h1>Java 开发环境配置</h1>
    <p>在本章节中我们将为大家介绍如何搭建Java开发环境。</p>
    <h2>window系统安装java</h2>
    <h3>下载JDK</h3>
    <p>首先我们需要下载java开发工具包JDK，下载地址：<a href="http://www.oracle.com/technetwork/java/javase/downloads/index.html"
                                    target="_blank">http://www.oracle.com/technetwork/java/javase/downloads/index.html</a>，点击如下下载按钮：
    </p>
    <p><img style="max-width:100%;" src="http://www.runoob.com/wp-content/uploads/2013/12/java-download.jpg"></p>
    <p>在下载页面中你需要选择接受许可，并根据自己的系统选择对应的版本，本文以 Window 64位系统为例：</p>
    <p><img style="max-width:100%;" src="http://www.runoob.com/wp-content/uploads/2013/12/java-download-1.jpg"></p>
    <p>下载后JDK的安装根据提示进行，还有安装JDK的时候也会安装JRE，一并安装就可以了。</p>
    <p>安装JDK，安装过程中可以自定义安装目录等信息，例如我们选择安装目录为&nbsp;C:\Program Files (x86)\Java\jdk1.8.0_91。</p>
    <h3>配置环境变量</h3>
    <p>1.安装完成后，右击"我的电脑"，点击"属性"，选择"高级系统设置"；</p>
    <p><img style="max-width:100%;" src="http://www.runoob.com/wp-content/uploads/2013/12/win-java1.png"></p>
    <p>2.选择"高级"选项卡，点击"环境变量"；</p>
    <p><img style="max-width:100%;" src="http://www.runoob.com/wp-content/uploads/2013/12/java-win2.png"></p>
    <p>然后就会出现如下图所示的画面：</p>
    <p><img style="max-width:100%;" src="http://www.runoob.com/wp-content/uploads/2013/12/java-win3.png"></p>
    <p>在"系统变量"中设置3项属性，JAVA_HOME,PATH,CLASSPATH(大小写无所谓),若已存在则点击"编辑"，不存在则点击"新建"。</p>
    <p>变量设置参数如下：</p>
    <ul>
        <li>变量名：JAVA_HOME</li>
        <li>变量值：C:\Program Files (x86)\Java\jdk1.8.0_91&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;// 要根据自己的实际路径配置</li>
    </ul>
    <ul>
        <li>变量名：CLASSPATH</li>
        <li>变量值：.;%JAVA_HOME%\lib\dt.jar;%JAVA_HOME%\lib\tools.jar;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; //记得前面有个"."</li>
    </ul>
    <ul>
        <li>变量名：Path</li>
        <li>变量值：%JAVA_HOME%\bin;%JAVA_HOME%\jre\bin;</li>
    </ul>
    <h3>JAVA_HOME 设置</h3>
    <p><img style="max-width:100%;" src="http://www.runoob.com/wp-content/uploads/2013/12/java-win4.png"></p>
    <p><img style="max-width:100%;" src="http://www.runoob.com/wp-content/uploads/2013/12/java-win5.png"></p>
    <p><img style="max-width:100%;" src="http://www.runoob.com/wp-content/uploads/2013/12/java-win6.png"></p>
    <p><img style="max-width:100%;" src="http://www.runoob.com/wp-content/uploads/2013/12/java-win7.png"></p>
    <h3>CLASSPATH 设置</h3>
    <p><img style="max-width:100%;" src="http://www.runoob.com/wp-content/uploads/2013/12/java-win8.png"></p>
    <p>这是 Java 的环境配置，配置完成后，你可以启动 Eclipse 来编写代码，它会自动完成java环境的配置。</p>
    <blockquote>注意：如果使用1.5以上版本的JDK，不用设置CLASSPATH环境变量，也可以正常编译和运行Java程序。</blockquote>
    <h3>测试JDK是否安装成功</h3>
    <p>1、"开始"-&gt;"运行"，键入"cmd"；</p>
    <p>2、键入命令:&nbsp;java -version、java、javac&nbsp;几个命令，出现以下信息，说明环境变量配置成功；</p>
    <p><img style="max-width:100%;" src="http://www.runoob.com/wp-content/uploads/2013/12/java-win9.png"></p>
    <h2>Linux，UNIX，Solaris，FreeBSD环境变量设置</h2>
    <p>环境变量PATH应该设定为指向Java二进制文件安装的位置。如果设置遇到困难，请参考shell文档。</p>
    <p></p>
    <p>例如，假设你使用bash作为shell，你可以把下面的内容添加到你的 .bashrc文件结尾: export PATH=/path/to/java:$PATH</p>
    <p><br></p>
</div>
<script src="/croppic/jquery-2.1.3.min.js"></script>
<script src="../layui/layui.js"></script>
<script src="/js/my.js"></script>

</body>
</html>
