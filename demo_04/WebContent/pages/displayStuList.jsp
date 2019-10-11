<!--这里是pages文件夹里的displayStuList.jsp-->
<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0, 
              minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
        <title>学生信息</title>
    </head>
    <body>
        <%
            String driver = "com.mysql.jdbc.Driver";
            String url="jdbc:mysql://182.254.197.48:23306/stu?useSSL=false&useUnicode=true&characterEncoding=utf8";
            String usr = "root";
            String password = "root";

            Class.forName(driver);
            Connection conn = DriverManager.getConnection(url, usr, password);
            String sqlString = "select * from StuList";
            PreparedStatement pstmt = conn.prepareStatement(sqlString);
            ResultSet rs = pstmt.executeQuery();
        %>
        <div align="right">欢迎你，<%=request.getParameter("username")%> 
            <a href="logout.jsp">退出</a>
        </div>
        <h2 align="center">学生信息列表</h2>
        <div align="right" >
            <input type="button" value="添加学生" 
                   onclick="javascrtpt:window.location.href = 'addStu.jsp'">
            <input type="button" value="修改" 
                   onclick="javascrtpt:window.location.href = 'editStu.jsp'">
        </div>
        
        <br>

        <table border=1 style="margin:auto">
            <tr>
                <td class="listTable">学号</td>
                <td class="listTable">姓名</td>
                <td class="listTable">性别</td>
                <td class="listTable">年龄</td>
                <td class="listTable">年级</td>
                <td id="profile">个人简介</td>
                <td id="operate">操作</td>
            </tr>
            <%
                while (rs.next()) {
                    out.println("<tr>");
                    out.println("<td>" + rs.getInt("id") + "</td>");
                    out.println("<td>" + rs.getString("name") + "</td>");
                    out.println("<td>" + rs.getString("sex") + "</td>");
                    out.println("<td>" + rs.getInt("age") + "</td>");
                    out.println("<td>" + rs.getString("grade") + "</td>");
                    out.println("<td>" + rs.getString("introduce") + "</td>");
                    out.println("<td><a href='../deleteServlet?id=" + rs.getInt("id") + "'>删除</a></td>");
                    out.println("</tr>");
                }
            %>
        </table>
    </body>
</html>
