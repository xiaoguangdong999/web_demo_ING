//杩欓噷鏄簮鍖呴噷鐨刾1鍖呬腑鐨刟ddServlet
package p1;
 
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class addServlet extends HttpServlet {
 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	response.setContentType("text/html;charset=utf-8");
        try (PrintWriter out = response.getWriter()) {
            
            String driver="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://127.0.0.1:3306/stu?useSSL=false&useUnicode=true&characterEncoding=utf8";
            String usr="root";
            String password="root";
            try{
                Class.forName(driver);
                Connection conn=DriverManager.getConnection(url,usr,password);
                String sqlString="INSERT INTO stulist (id, name, sex, age, grade, introduce )"
                        + "VALUES ( ?, ?, ?, ?, ?, ? )";
                PreparedStatement pstmt=conn.prepareStatement(sqlString);
                int id = Integer.parseInt(request.getParameter("stuid"));
                String name = request.getParameter("stuname");
                
//            	娴嬭瘯涔辩爜闂
                System.out.println("This is test锛�");
            	System.out.println(request.getParameter("stuname"));
            	
                String sex = request.getParameter("stusex");
                int age = Integer.parseInt(request.getParameter("stuage"));
                String grade = request.getParameter("stugrade");
                String introduce = request.getParameter("stuintroduce");
                pstmt.setInt(1, id);
                pstmt.setString(2, name);
                pstmt.setString(3, sex);
                pstmt.setInt(4, age);
                pstmt.setString(5, grade);
                pstmt.setString(6, introduce);     
                pstmt.execute();
            }catch(Exception e){ 
                System.err.println("error:"+e);
            }
            response.sendRedirect("pages/displayStuList.jsp");
        }
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
 
   @Override
    public String getServletInfo() {
        return "Short description";
    }
 
}
