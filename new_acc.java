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
public class new_acc extends HttpServlet
{
    Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        
        String firstname=req.getParameter("firstname");
        String lastname=req.getParameter("lastname");
        String address=req.getParameter("address");
        String city=req.getParameter("city");
        String birthdate=req.getParameter("birthdate");
        String phno=req.getParameter("phno");
        String adharcard=req.getParameter("adharcard");
        String gender=req.getParameter("gender");
        String email=req.getParameter("email");
        String image=req.getParameter("image");
        String signature=req.getParameter("signature");
        String accounttype=req.getParameter("accounttype");
        String amount=req.getParameter("amount");
        String event=req.getParameter("submit");
        
        
        out.println(firstname);
        out.println(lastname);
        out.println(address);
        out.println(city);
        out.println(birthdate);
        out.println(phno);
        out.println(adharcard);
        out.println(gender);
        out.println(email);
        out.println(image);
        out.println(signature);
        out.println(accounttype);
        out.println(amount);
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
       
        String account_number="1197";
        int min=111111;
        int max=999999;
        
        double a=(double) Math.random() * (max-min+1)+min;
        long b=(long)a;
        
        account_number=account_number+String.valueOf(b);
        
       
        if(event.equals("Create Account"))
        {
            if(firstname.equals("") || lastname.equals("") || address.equals("")|| city.equals("")|| birthdate.equals("")||phno.equals("")||adharcard.equals("") ||gender.equals("")||email.equals("")||image.equals("")||signature.equals("")||accounttype.equals("")||amount.equals("amount"))
            {
                resp.setContentType("text/html");
                out.println("<script type='text/javascript'>");
                out.println("alert('Something is empty')");
                out.println("location='new_acc.jsp'");
                out.println("</script>");
            }
            else
            {
               
                    try
                    { 
                        String sql = "insert into new_acc(user_id, firstname, lastname, address, city, birthdate, phno, adharcard,gender, email, image, signature, accounttype, amount, account_number) values ('"+session.getAttribute("user_id") +"', '"+firstname+"' , '"+lastname+"', '"+address+"','"+city+"','"+birthdate+"','"+phno+"','"+adharcard+"','"+gender+"','"+email+"','"+image+"','"+signature+"','"+accounttype+"','"+amount+"','"+account_number+"')";
                        String insert = db.Insert(sql);
                        out.println(insert);
                       resp.setContentType("text/html");
                out.println("<script type='text/javascript'>");
                out.println("alert('New Account Created Successfully|||')");
                out.println("location='request_atm.jsp'");
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
    
