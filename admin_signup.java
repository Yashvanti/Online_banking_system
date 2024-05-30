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
public class admin_signup extends HttpServlet 
{
     Connection cn=null;
     Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        
        String name=req.getParameter("name");
        String phno=req.getParameter("phno");
        String email=req.getParameter("email");
        String adminname=req.getParameter("adminname");
        String password=req.getParameter("password");
        String repassword=req.getParameter("repassword");
        String event=req.getParameter("submit");
        
        
        out.println(name);
        out.println(phno);
        out.println(email);
        out.println(adminname);
        out.println(password);
        out.println(repassword);
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
        
        
         if(event.equals("SIGN-IN"))
        {
            if(name.equals("") || phno.equals("") || email.equals("")|| adminname.equals("") || password.equals("") || repassword.equals(""))
            {
                resp.setContentType("text/html");
                out.println("<script type='text/javascript'>");
                out.println("alert('Something is empty')");
                out.println("location='admin_signup.jsp'");
                out.println("</script>");
            }
            else
            {
                if(password.equals(repassword))
                {
                    try
                    {
                        String sql = "insert into admin_signup(name, phno, email, adminname, password, repassword) values ('"+name+"', '"+phno+"' , '"+email+"', '"+adminname+"','"+password+"', '"+repassword+"')";
                        String insert = db.Insert(sql);
                        out.println(insert);
                        
                         resp.setContentType("text/html");
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Record Insert Succcessfully')");
                        out.println("location='admin_login.jsp'");
                        out.println("</script>");
                    }
                    catch(Exception ex)
                    {
                        out.println(ex.toString());
                    }
                }
                else
                {
                  out.println("Password andConfirm password are not equal");
                
                }
            }
       }
    }
}