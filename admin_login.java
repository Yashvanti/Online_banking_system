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

/**
 *
 * @author lenovo1
 */
public class admin_login extends HttpServlet 
{
    Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
        
        PrintWriter out = resp.getWriter();
        
        
        
        String name=req.getParameter("name");
        String password=req.getParameter("password");
        String event=req.getParameter("submit");
        
        out.println(name);
        out.println(password);
        out.println(event);
        
        Database db = new Database();
         String result = db.Connectdb();
        // out.println(result);
       
        
       if(event.equals("login"))
        {
            if(name.equals("")||password.equals(""))
            {
                resp.setContentType("text/html");
                out.println("<script type='text/javascript'>");
                out.println("alert('Something is empty')");
                out.println("location='admin_login.jsp'");
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
                    sql = "select * from admin_signup where ( adminname='"+name+"' || Email='"+name+"') && Password='"+password+"'  ";
                    ResultSet rs = st.executeQuery(sql);
                    
                    if(rs.next())
                    {
                        resp.setContentType("text/html");
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Login successfully')");
                        out.println("location='admin_homepage.jsp'");
                        out.println("</script>");
                    }
                    else
                    {
                        resp.setContentType("text/html");
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Login failed')");
                        out.println("location='admin_login.jsp'");
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
