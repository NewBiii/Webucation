<%--
  Created by IntelliJ IDEA.
  User: NewBee
  Date: 2017/3/29
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
<body>

<h2>请输入用户名和密码</h2>
<table>
    <tr>
        <td>
            <form action="/user/login" method="get">
                <input id="userid" name="userid" value="123@qq.com"/><br/>
                <input id="userpassword" name="userpassword" value="123"/><br/>
                <input type="submit" value="登录"/>
            </form>
        </td>
    </tr>
</table>
</body>
</html>