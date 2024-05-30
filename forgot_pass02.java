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
public class forgot_pass02 extends HttpServlet 
{
    Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        
        String OTP=req.getParameter("OTP");
        String npass=req.getParameter("npass");
        String cpass=req.getParameter("cpass");
        String event=req.getParameter("submit");
        
        out.println(OTP);
        out.println(npass);
        out.println(cpass);
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
        
          if(event.equals("Verify"))
        {
            if(OTP.equals("") || npass.equals("") || cpass.equals(""))
            {
                resp.setContentType("text/html");
                out.println("<script type='text/javascript'>");
                out.println("alert('Something is empty')");
                out.println("location='forgot_pass02.jsp'");
                out.println("</script>");
            }
            else
            {
                if(npass.equals(cpass))
                {
                    try
                    {
                        String sql = "insert into forgot_pass02(OTP,npass , cpass) values ('"+OTP+"', '"+npass+"' , '"+cpass+"')";
                        String insert = db.Insert(sql);
                        out.println(insert);
                        resp.sendRedirect("user_login.jsp");
                    }
                    catch(Exception ex)
                    {
                        out.println(ex.toString());
                    }
                }
                else
                {
                   
                    out.println("Password and Confirm password are not equal");
                
                }
            }
        }
    }
    
}