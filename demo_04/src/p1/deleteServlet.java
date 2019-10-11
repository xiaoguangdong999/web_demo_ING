//这里是源包里的p1包中的deleteServlet
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
 
public class deleteServlet extends HttpServlet {
 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String driver="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://127.0.0.1:3306/stu?useSSL=false&useUnicode=true&characterEncoding=utf8";
            String usr="root";
            String password="root";
            try{
                Class.forName(driver);
                Connection conn=DriverManager.getConnection(url,usr,password);
                String sqlString="delete from StuList where id=?";
                PreparedStatement pstmt=conn.prepareStatement(sqlString);
                int id =Integer.parseInt(request.getParameter("id"));
                
                pstmt.setInt(1, id);
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
