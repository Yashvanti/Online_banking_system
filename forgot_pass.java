/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lenovo1
 */
public class forgot_pass extends HttpServlet
{
    Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        
        String email=req.getParameter("email");
        String event=req.getParameter("submit");
        
        out.println(email);
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
          if(event.equals("send otp"))
        {
            if(email.equals(""))
            {
                resp.setContentType("text/html");
                out.println("<script type='text/javascript'>");
                out.println("alert('Something is empty')");
                out.println("location='forgot_pass.jsp'");
                out.println("</script>");
            }
            else
            {
                  try
                    {
                        String sql = "insert into forgot_pass(email) values ('"+email+"')";
                        String insert = db.Insert(sql);
                        out.println(insert);
                        resp.sendRedirect("forgot_pass02.jsp");
                    }
                    catch(Exception ex)
                    {
                        out.println(ex.toString());
                    }
                }
               
                {
                  out.println("Password andConfirm password are not equal");
                
                }
        }
        
    }
    
}