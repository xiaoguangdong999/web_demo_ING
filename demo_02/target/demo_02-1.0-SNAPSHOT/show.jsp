<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'message.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <style type="text/css">
        section{
            border:1px solid ;
            width:300px;
            height:300px;
        }
    </style>
    <script type="text/javascript">

    </script>
</head>

<body>
<center>
    <h1>留言栏</h1>
    <textarea rows="20" cols="36" name = "content" >
  		 	<%
                request.setCharacterEncoding("utf-8");
                String  m = (String )application.getAttribute("message");
                out.print(m);
                if(m.length() > 1000000000){
                    application.setAttribute("message", "清屏");
                }
            %>
			</textarea>

</center>
</body>
</html>