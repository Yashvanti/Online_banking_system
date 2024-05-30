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
public class transfer_money extends HttpServlet 
{
    Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
                HttpSession session=req.getSession();

        String accountno=req.getParameter("accountno");
        String usernm=req.getParameter("usernm");
        String password=req.getParameter("password");
        String toaccount=req.getParameter("toaccount");
        String amount=req.getParameter("amount");        
        String event=req.getParameter("submit");
        long millis=System.currentTimeMillis();  
       java.sql.Date date1=new java.sql.Date(millis); 
       String date = String.valueOf(date1);
       
       String user_id = "";
       String balance = "";
       String Amount = "";
       String balance1 = "";
       String Amount1="";
        
        out.println(accountno);
        out.println(usernm);
        out.println(password);
        out.println(toaccount);
        out.println(amount);
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
 
        
       if(event.equals("Send Money"))
        {
            if(accountno.equals("") || usernm.equals("") || password.equals("")|| toaccount.equals(""))
            {
                resp.setContentType("text/html");
                out.println("<script type='text/javascript'>");
                out.println("alert('Something is empty')");
                out.println("location='transfer_money.jsp'");
                out.println("</script>");
            }
            else
            {
               
                    try
                    {
                        if(usernm.equals(session.getAttribute("username")) && password.equals(session.getAttribute("password")))
                    {
                                 Class.forName("com.mysql.jdbc.Driver");
                                 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","root");
                                 st=cn.createStatement();
                                 
                                    
                                 
                                 String sql2 = "select * from new_acc where user_id = '"+session.getAttribute("user_id")+"' && account_number= '"+accountno+"'";
                                 ResultSet rs2 = st.executeQuery(sql2);
                                 if(rs2.next())
                                    {
                                        
                                    balance = rs2.getString("amount");  
                                         
                                    long l= Long.parseLong(balance) - Long.parseLong(amount);  
                                    Amount = String.valueOf(l);
                                    
                                    out.println(balance);
                                    out.println(l);
                                    out.println(Amount);
                                    
                                    String update = db.update("update new_acc set amount='"+Amount+"' where user_id = '"+session.getAttribute("user_id")+"' && account_number = '"+accountno.toString()+"' ");
                                    out.println(update);
                                     
                                    String insert = db.Insert("insert into online_statement (date, transactiontype, debitamount,creditamount,balance,accountno) value ('"+date.toString()+"', 'Transfer',  '"+amount+"', '0', '"+Amount+"', '"+accountno.toString()+"' ) ");
                                    out.println(insert);
                                     
                                }
                                 
                                 
                                 String sql3 = "select * from new_acc where account_number = '"+toaccount.toString()+"' ";
                                 ResultSet rs3 = st.executeQuery(sql3);
                                 if(rs3.next())
                                    {
                                        
                                        balance1 = rs3.getString("amount");  
                                         
                                    long l1= Long.parseLong(balance) + Long.parseLong(amount);  
                                    Amount1 = String.valueOf(l1);
                                    
                                    out.println(balance1);
                                    out.println(l1);
                                    out.println(Amount1);
                                                
                                    String update = db.update("update new_acc set amount='"+Amount1+"' where account_number = '"+toaccount.toString()+"' ");
                                    out.println(update);
                                    resp.setContentType("text/html");
                                    out.println("   <script type=\"text/javascript\">   ");
                                    out.println("   alert('Amound Transfered');                ");
                                    out.println("   location='transfer_money.jsp';            ");
                                    out.println("   </script>                           ");  
                                    
                                    
                                    


                                }
                    }
                    else
                    {
                                     resp.setContentType("text/html");
                                    out.println("   <script type=\"text/javascript\">   ");
                                    out.println("   alert('Account Not Found');                ");
                                    out.println("   location='transfer_money.jsp';            ");
                                    out.println("   </script>                           "); 
                    }
                                
                               
                }
                catch(Exception ex)
                {
                                resp.setContentType("text/html");

                                out.println("   <script type=\"text/javascript\"> ");
                                out.println("   alert('"+ex.toString()+"'); ");
                                out.println("   location='transfer_money.jsp'; ");
                                out.println("   </script>  ");
                }
            }
        }
        
        
        if(event.equals("CANCEL"))
        {
           resp.sendRedirect("userhome.jsp");
        
        }
                    
        }
       
}