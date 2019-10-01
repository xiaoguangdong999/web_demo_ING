<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML >
<html>
<head>
</head>

<body>
<form action="message.jsp">
    <center>
        <input type = "text"  name = "name"  required = "required"  placeholder = "用户姓名">
        <input type = "text"  name = "title" required = "required"  placeholder = "留言标题">
        <br/>
        请输入留言内容
        <br/>
        <textarea rows="20" cols="36" name = "留言内容" ></textarea>
        <br/>
        <input type = "submit"  value = "提交"/>
        <br>
        <br>
        <a href = "show.jsp">查看留言</a>
    </center>
</form>
</body>
</html>