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
public class online_stament extends HttpServlet 
{
    Connection cn=null;
    Statement st=null;
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
         PrintWriter out=resp.getWriter();
        HttpSession session = req.getSession();
        
        String accountno = req.getParameter("accountno");
        String fromdate= req.getParameter("fromdate");
        String accounttype= req.getParameter("accounttype");
        String todate = req.getParameter("todate");
        String event = req.getParameter("submit");
        
        out.println(accountno);
        out.println(fromdate);
        out.println(accounttype);
        out.println(todate);
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
        if(event.equals("submit"))
        {
            if(accountno.equals("")||fromdate.equals("")||accounttype.equals("") || todate.equals(""))
            {
                                resp.setContentType("text/html");
                                out.println(" <script type = 'text/javascript'>");
                                out.println("alert ('something is empty')");
                                out.println("location='cheque_form.jsp'");
                                out.println("</script>");
                       
            }
            else
            {
                try
                {
                    session.setAttribute("fromdate", fromdate);
                    session.setAttribute("todate", todate);
                    session.setAttribute("accountno", accountno); 
                    resp.sendRedirect("online_statement.jsp");
                }
                catch(Exception ex)
                {
                    out.println(ex.toString());
                }
            }
            
        }
    }
}







































