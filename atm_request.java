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
public class atm_request extends HttpServlet 
{
    
    Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        Database db=new Database();
        String result=db.Connectdb();
        System.out.println(result);
        
        HttpSession session = req.getSession();
        PrintWriter out = resp.getWriter();
        
        String user_id = req.getParameter("user_id");
        String id=req.getParameter("id");
        String status=req.getParameter("status");
        String account_no ="707070";
        
        
        String event=req.getParameter("submit");
        
        out.println(user_id);
        out.println(id);
        out.println(status);
        
        
        
        int min = 1111;  
        int max = 9999; 
          
        double a = (double) Math.random()*(max-min+1)+min;   
        long b = (long)a;
        account_no = account_no+String.valueOf(b);
        
        out.println(account_no);
        
        
        if(event.equals("approved"))
        {
            if(status.equals("approved"))
            {
                 resp.setContentType("text/html");
                   out.println("   <script type=\"text/javascript\">   ");
                   out.println("   alert('atm has been already approved and cheque book number is assigned');                ");
                   out.println("   location='Atm Request Approved.jsp';            ");
                   out.println("   </script>                           ");
            }
            else
            {
                try
               {
                           
                    String update = db.update("update request_atm set status='approved'  where (id='"+id+"' ) ");
                    out.println(update);
                    resp.setContentType("text/html");
                    out.println("   <script type=\"text/javascript\">   ");
                    out.println("   alert('"+update+"');                ");
                    out.println("   location='atm_request.jsp';            ");
                    out.println("   </script>                           ");      
                            
                    
               }
               catch(Exception ex)
               {
                   resp.setContentType("text/html");
                   out.println("   <script type=\"text/javascript\">   ");
                   out.println("   alert('"+ex.toString()+"');                ");
                   out.println("   location='atm_request.jsp';            ");
                   out.println("   </script>                           ");
               }
            }
         
         }
        
        if(event.equals("Rejected"))
        {
            if(status.equals("Rejected"))
            {
                 resp.setContentType("text/html");
                   out.println("   <script type=\"text/javascript\">   ");
                   out.println("   alert('Atm has been already Rejected');                ");
                   out.println("   location='atm_request.jsp';            ");
                   out.println("   </script>                           ");
            }
            else
            {
                try
               {
                           
                    String update = db.update("update request_atm set status='Reject' where (user_id='"+user_id+"' && id='"+id+"' ) ");
                    out.println(update);
                    resp.setContentType("text/html");
                    out.println("   <script type=\"text/javascript\">   ");
                    out.println("   alert('"+update+"');                ");
                    out.println("   location='atm_request.jsp';            ");
                    out.println("   </script>                           ");      
                            
                    
               }
               catch(Exception ex)
               {
                   resp.setContentType("text/html");
                   out.println("   <script type=\"text/javascript\">   ");
                   out.println("   alert('"+ex.toString()+"');                ");
                   out.println("   location='atm_request.jsp';            ");
                   out.println("   </script>                           ");
               }
            }
         
  

}
    }

    
    }
    
