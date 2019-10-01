<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML >
<html>
<head>
</head>

<body>
<form action="message.jsp">
    <center>
        <input type = "text"  name = "name"  required = "required"  placeholder = "tell me name">
        <input type = "text"  name = "title" required = "required"  placeholder = "tell me title">
        <br/>
        tell me content
        <br/>
        <textarea rows="20" cols="36" name = "content" ></textarea>
        <br/>
        <input type = "submit"  value = "提交"/>
        <br>
        <br>
        <a href = "show.jsp">查看留言</a>
    </center>
</form>
</body>
</html>