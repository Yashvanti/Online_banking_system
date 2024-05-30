/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
public class user_signup extends HttpServlet 
{

    Connection cn=null;
    Statement st=null;
    
    
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out = resp.getWriter();
        HttpSession session=req.getSession();
        String full_name=req.getParameter("full_name");
        String phno=req.getParameter("phno");
        String email=req.getParameter("email");
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        String repassword=req.getParameter("repassword");
        String event=req.getParameter("submit");
        
        
        out.println(full_name);
        out.println(phno);
        out.println(email);
        out.println(username);
        out.println(password);
        out.println(repassword);
        out.println(event);
        
        
        
        Database db = new Database();
        ResultSet rs=null;
        String result = db.Connectdb();
        out.println(result);
        
        
        if(event.equals("SIGN-IN"))
        {
            
                    if(full_name.equals("") || phno.equals("") || email.equals("")|| username.equals("") || password.equals("") || repassword.equals(""))

           {
                                     resp.setContentType("text/html");
                                     out.println(" <script type = 'text/javascript'>");
                                     out.println("alert ('something is empty')");
                                     out.println("location='user_login.jsp'");
                                     out.println("</script>");
                     
           }
           else{
               if(password.equals(repassword))
           
           {
               try
               {
                   
                   String sql = "insert into user_signup(full_name,phno ,email,username , password, repassword) values ('"+full_name+"', '"+phno+"' , '"+email+"', '"+username+"','"+password+"', '"+repassword+"')";
                   String insert =db.Insert(sql);
                   out.println(insert);
                   
                   
                      resp.setContentType("text/html");
                      out.println(" <script type = 'text/javascript'>");
                      out.println("alert ('signup successfully')");
                      out.println("location='user_login.jsp'");
                      out.println("</script>");
                    
               }
               catch(Exception ex)
               {
                   out.println(ex.toString());
               }
           }
              
                    }
        }
    }
}
          