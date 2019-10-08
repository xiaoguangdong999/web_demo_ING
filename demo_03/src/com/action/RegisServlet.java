package com.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisServlet extends HttpServlet{
	@Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String username =  new String(request.getParameter("username").getBytes("ISO-8859-1"), "UTF-8");
        String password =  new String(request.getParameter("password").getBytes("ISO-8859-1"), "UTF-8");
        String sex = new String(request.getParameter("sex").getBytes("ISO-8859-1"), "UTF-8");
        String birth =  new String(request.getParameter("birth").getBytes("ISO-8859-1"), "UTF-8");
        String email =  new String(request.getParameter("email").getBytes("ISO-8859-1"), "UTF-8");
        String address =  new String(request.getParameter("address").getBytes("ISO-8859-1"), "UTF-8");
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<meta charset=\"utf-8\">");
            out.println("<title>新增会员成功</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>新增会员成功</h1>");
            out.println("<h3>姓名："+username+"</h3>");
            out.println("<h3>密码："+password+"</h3>");
            out.println("<h3>性别："+sex+"</h3>");
            out.println("<h3>生日："+birth+"</h3>");
            out.println("<h3>电子邮件："+email+"</h3>");
            out.println("<h3>地址："+address+"</h3>");
            out.println("<a href='index.jsp'>返回注册页面</a>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }


    @Override
    public void destroy() {
        super.destroy();
    }
}
