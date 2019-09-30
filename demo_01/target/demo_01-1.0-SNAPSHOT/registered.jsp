<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body align="center">
<h2>新用户注册</h2>
<form action="registeredSucceed.jsp" method="post">
    <table align="center">
        <tr align="right">
            <td>请输入用户名:</td>
            <td><input type="text" name=name autofocus="autofocus"></td>
        </tr>
        <tr align="right">
            <td>请输入密码:</td>
            <td><input type="text" name=password></td>
        </tr>
        <tr align="right">
            <td>请输入确认密码:</td>
            <td><input type="text" name=refill></td>
        </tr>
        <tr align="right">
            <td>年龄:</td>
            <td><input type="text" name=age></td>
        </tr>
        <tr align="right">
            <td>性别:</td>
            <td><input type="text" name=sex></td>
        </tr>
        <tr align="right">
            <td>地址:</td>
            <td><input type="text" name=address></td>
        </tr>
        <tr align="right">
            <td>电话:</td>
            <td><input type="text" name=phone></td>
        </tr>
        <tr align="right">
            <td>邮箱:</td>
            <td><input type="text" name=email></td>
        </tr>
    </table>
    <input type="submit" name=register value="注册" >
    <input type="reset" name=refill value="重填" >
</form>


</body>
</html>
