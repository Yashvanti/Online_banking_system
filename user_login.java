/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author lenovo1
 */
public class user_login extends HttpServlet 
{
    Connection cn=null;
    Statement st=null;
   
    

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        PrintWriter out = resp.getWriter();
        HttpSession session=req.getSession();
        
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        String event=req.getParameter("submit");
        
        out.println(username);
        out.println(password);
        out.println(event);
        
         Database db = new Database();
         String result = db.Connectdb();
         out.println(result);
       
        
        if(event.equals("login"))
        {
            if(username.equals("")||password.equals(""))
            {
                resp.setContentType("text/html");
                out.println("<script type='text/javascript'>");
                out.println("alert('Something is empty')");
                out.println("location='user_login.jsp'");
                out.println("</script>");
            }
            else
            {
                try
                {
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","root");
                    Statement st=cn.createStatement();
                    
                    String sql;
                    sql = "select * from user_signup where  username='"+username+"'  && Password='"+password+"'  ";
                    ResultSet rs = st.executeQuery(sql);
                    
                    if(rs.next())
                    {
                        
                        session.setAttribute("user_id", rs.getString("user_id").toString());
                        session.setAttribute("username", rs.getString("username").toString());
                        session.setAttribute("password",rs.getString("password").toString());
                        
                        resp.setContentType("text/html");
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Login successfully')");
                        out.println("location='user_homepage.jsp'");
                        out.println("</script>");
                    }
                    else
                    {
                        resp.setContentType("text/html");
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Login failed')");
                        out.println("location='user_login.jsp'");
                        out.println("</script>");
                    }
                    
                }
                catch(Exception ex)
                {
                    out.println(ex.toString());
                }
            }
        }
    }
}
