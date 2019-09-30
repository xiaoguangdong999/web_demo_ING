<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>判断登录</title>
</head>
<body>
<%
    Context ctx = null;
    DataSource ds = null;
    Statement stmt =null;
    ResultSet rs = null;
    Connection con = null;
    String name = request.getParameter("name").trim();
    String password = request.getParameter("password").trim();
    try{
        ctx = new InitialContext();
        ds = (DataSource)ctx.lookup("java:comp/env/jdbc/mysql");//mysql是在创建连接池时自己创建的名字  语句功能找到配置的数据库
        con = ds.getConnection();//创建数据库连接
        stmt = con.createStatement();
        rs=stmt.executeQuery("select * from user where name='"+name+"'");
        if(rs.next()){
            rs=stmt.executeQuery("select * from user where name='"+name+"' and password='"+password+"'");
            if(rs.next()){
                out.print(name+"登录成功");
            }else{
                out.print("密码输入错误！！！<br>"+"重新<a href=\"login.jsp\">登录</a>");
            }
        }else{
            out.print("<font color=red>"+name+"</font>用户不存在！！！<br>"+"请点击<a href=\"registered.jsp\">注册</a>");
        }
    }catch(Exception e){
        out.print(e);
    }finally{
        if(rs!=null)
            rs.close();
        if(stmt!=null)
            stmt.close();
        if(con!=null)
            con.close();
    }
%>

</body>
</html>
