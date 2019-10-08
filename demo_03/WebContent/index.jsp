<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<h2>用户注册</h2>
<form action="/demo_03/Register" method="post">
    <label>用户名</label>
    <input type="text" name="username">
    <label>密码</label>
    <input type="text" name="password">
    <label>性别</label>
    <input type="text" name="sex">
    <label>出生年月</label>
    <input type="text" name="birth">
    <label>电子邮箱</label>
    <input type="text" name="email">
    <label>家庭住址</label>
    <input type="text" name="address">
    <input type="submit" value="立即注册">
</form>
</body>
</html>