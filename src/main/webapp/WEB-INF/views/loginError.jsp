<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>登录失败</title>
</head>
<body>
	<h1>登录失败：</h1>
	<br /> ${message}
	<br />
	<input type="submit" value="返回"
		onclick="javasrcipt:window.history.go(-1);" />
</body>
</html>