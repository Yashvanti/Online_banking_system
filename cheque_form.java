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
import javax.servlet.http.HttpSession;

/**
 *
 * @author lenovo1
 */
public class cheque_form extends HttpServlet 
{
    Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        String accountno=req.getParameter("accountno");
        String accounttype=req.getParameter("accounttype");       
        String signature=req.getParameter("signature");
        String event=req.getParameter("submit");
        
        
        out.println(accountno);
        out.println(accounttype);
        out.println(signature);
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
        
        
         if(event.equals("SUBMIT"))
        {
            if(accountno.equals("") || accounttype.equals("") ||signature.equals("") )
            {
                resp.setContentType("text/html");
                out.println("<script type='text/javascript'>");
                out.println("alert('Something is empty')");
                out.println("location='cheque_form.jsp'");
                out.println("</script>");
            }
            else
            {
                if(accountno.equals(accountno))
                {
                    try
                    {
                        String sql = "insert into cheque_form(user_id,accountno, accounttype, signature)values ('"+session.getAttribute("user_id")+"','"+accountno+"', '"+accounttype+"' ,'"+signature+"')";
                        String insert = db.Insert(sql);
                        out.println(insert);
                        resp.setContentType("text/html");
                        out.println("   <script type=\"text/javascript\">   ");
                        out.println("alert('record inserted successfully')");
                        out.println("   location='user_homepage.jsp';            ");
                        out.println("   </script>                           ");

                    }
                    catch(Exception ex)
                    {
                        out.println(ex.toString());
                    }
                }
                else
                {
                  out.println("Account no is wrong");
                
                }
            }
        }
    }
}