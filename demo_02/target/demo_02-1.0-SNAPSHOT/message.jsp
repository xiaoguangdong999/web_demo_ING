<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
</head>

<body>
<%
    request.setCharacterEncoding("utf-8");
    String n = request.getParameter("name");
    String t =request.getParameter("title");
    String c =request.getParameter("content");

    if(application.getAttribute("message") != null){
        application.setAttribute("message",  (String)application.getAttribute("message") + "\n" + n + " 留言： " + "\n" + t +" : " + c  + "\n"  );
    }else{
        application.setAttribute("message",  n + " 留言： " + "\n" + t +" : " + c  + "\n");
    }
    out.println(n + " : 留言成功,3秒后返回留言界面" );
    response.setHeader("Refresh", "3;index.jsp ");

%>

</body>
</html>