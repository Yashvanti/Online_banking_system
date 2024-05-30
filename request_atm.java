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
public class request_atm extends HttpServlet 
{
    Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        
        String name=req.getParameter("name");
        String address=req.getParameter("address");
        String pincode=req.getParameter("pincode");
        String city=req.getParameter("city");
        String state=req.getParameter("state");
        String mono=req.getParameter("mono");
        String email=req.getParameter("email");
        String accounttype=req.getParameter("accounttype");
        String gender=req.getParameter("gender");
        String birthdate=req.getParameter("birthdate");
        String accountno=req.getParameter("accountno");
        String place=req.getParameter("place");
        String date=req.getParameter("date");
        String signature=req.getParameter("signature");
        String event=req.getParameter("submit");
        
        
        out.println(name);
        out.println(address);
        out.println(pincode);
        out.println(city);
        out.println(state);
        out.println(mono);
        out.println(email);
        out.println(accounttype);
        out.println(gender);
        out.println(birthdate);
        out.println(accountno);
        out.println(place);
        out.println(date);
        out.println(signature);
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
         if(event.equals("SUBMIT"))
        {
            if(name.equals("") || address.equals("") || pincode.equals("")|| city.equals("") || state.equals("") || mono.equals("")||email.equals("")||accounttype.equals("")||gender.equals("")||birthdate.equals("")||accountno.equals("")||place.equals("")||date.equals("")||signature.equals(""))
            {
                resp.setContentType("text/html");
                out.println("<script type='text/javascript'>");
                out.println("alert('Something is empty')");
                out.println("location='request_atm.jsp'");
                out.println("</script>");
            }
            else
            {
               
                    try
                    {
                        String sql = "insert into request_atm(name, address, pincode, city, state, mono, email, accounttype, gender, birthdate, accountno, place, date, signature, user_id) values ('"+name+"', '"+address+"' , '"+pincode+"', '"+city+"','"+state+"', '"+mono+"','"+email+"','"+accounttype+"','"+gender+"','"+birthdate+"','"+accountno+"','"+place+"','"+date+"','"+signature+"','"+session.getAttribute("user_id")+"')";
                       String insert =db.Insert(sql);
                   out.println(insert);
                        out.println(insert);resp.setContentType("text/html");
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Record inserted succefully')");
                        out.println("location='user_homepage.jsp'");
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