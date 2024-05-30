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
public class deposite extends HttpServlet 
{
    Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Database db=new Database();
        String result=db.Connectdb();
        System.out.println(result);
        
        HttpSession session = req.getSession();
        PrintWriter out = resp.getWriter();
        
        String event=req.getParameter("submit");

        
       String accno= req.getParameter("accno");
       String uname= req.getParameter("uname");
       String pass= req.getParameter("pass");
       String amt= req.getParameter("amt");
       String user_id = "";
       String balance = "";
       String Amount = "";
       String account_type="";
       
       long millis=System.currentTimeMillis();  
       java.sql.Date date1=new java.sql.Date(millis); 
       String date = String.valueOf(date1);
       
       out.println(accno);
       out.println(uname);
       out.println(pass);
       out.println(amt);
       
       
       if(event.equals("submit"))
        {
            if(accno.equals("")|| uname.equals("")|| pass.equals("")|| amt.equals(""))
                    {
                       resp.setContentType("text/html");
                   out.println("   <script type=\"text/javascript\">   ");
                   out.println("   alert('Some Fields Are Empty');                ");
                   out.println("   location='deposite.jsp';            ");
                   out.println("   </script>                           ");
                    }
             
            else
            {
                try
                {
                                                           

                    if(uname.equals(session.getAttribute("username")) && pass.equals(session.getAttribute("password")))
                    { 
                                 Class.forName("com.mysql.jdbc.Driver");
                                 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","root");
                                 st=cn.createStatement();
                                 
                                   
                                 
                                 String sql2 = "select * from new_acc where user_id = '"+session.getAttribute("user_id")+"' && account_number = '"+accno.toString()+"' ";                                 ResultSet rs2 = st.executeQuery(sql2);
                                 if(rs2.next())
                                    {
                                        
                                     balance = rs2.getString("amount");   
                                      
                                    long l= Long.parseLong(balance) + Long.parseLong(amt);  
                                    Amount = String.valueOf(l);
                                    
                                    out.println(balance);
                                    out.println(l);
                                    out.println(Amount);
                                    
                                    String update = db.update("update new_acc set amount='"+Amount+"' where user_id = '"+session.getAttribute("user_id")+"' && account_number = '"+accno.toString()+"' ");
                                    out.println(update);
                                    
                                    String insert = db.Insert("insert into online_statement (Date, TransactionType, DebitAmount ,CreditAmount,Balance,Accountno,user_id) value ('"+date.toString()+"', 'Deposite', '0', '"+amt+"', '"+Amount+"', '"+accno.toString()+"',   '"+session.getAttribute("user_id")+"' ) ");
                                    out.println(insert);
                                    resp.setContentType("text/html");
                                    out.println("   <script type=\"text/javascript\">   ");
                                    out.println("   alert('Amount Diposited');                ");
                                    out.println("   location='deposite.jsp';            ");
                                    out.println("   </script>                           ");  
                                     
                                }
                    }
                    else
                    {
                        resp.setContentType("text/html");
                        out.println("   <script type=\"text/javascript\">   ");
                        out.println("   alert('Account Not Found');                ");
                        out.println("   location='deposite.jsp';            ");
                        out.println("   </script>                           "); 
                    }
                                
                               
                }
                catch(Exception ex)
                {
                                resp.setContentType("text/html");

                                out.println("   <script type=\"text/javascript\"> ");
                                out.println("   alert('"+ex.toString()+"'); ");
                                out.println("   location='deposite.jsp'; ");
                                out.println("   </script>  ");
                }
            }
        }
        
        
        if(event.equals("CANCEL"))
        {
               resp.sendRedirect("user_homepage.jsp");
        
        }
                    
        }
}
    