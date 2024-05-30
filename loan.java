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
public class loan extends HttpServlet {

    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String firstname = req.getParameter("firstname");
        String lastname = req.getParameter("lastname");
        String email = req.getParameter("email");
        String city = req.getParameter("city");
        String branchcode = req.getParameter("branchcode");
        String phno = req.getParameter("phno");
        String adharcard = req.getParameter("adharcard");
        String loanamount = req.getParameter("loanamount");
        String timeperiod = req.getParameter("timeperiod");
        String loantype = req.getParameter("loantype");
        String fromdate = req.getParameter("fromdate");
        String todate = req.getParameter("todate");
        String time = req.getParameter("time");
        String event = req.getParameter("submit");


        out.println(firstname);
        out.println(lastname);
        out.println(email);
        out.println(city);
        out.println(branchcode);
        out.println(phno);
        out.println(adharcard);
        out.println(loanamount);
        out.println(timeperiod);
        out.println(loantype);
        out.println(fromdate);
        out.println(todate);
        out.println(time);
        out.println(event);

        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        HttpSession session = req.getSession();


        if (event.equals("APPLY")) {
            if (firstname.equals("") || lastname.equals("") || email.equals("") || city.equals("") || branchcode.equals("") || phno.equals("") || adharcard.equals("") || loanamount.equals("") || timeperiod.equals("") || loantype.equals("") || fromdate.equals("") || todate.equals("") || time.equals("")) {
                resp.setContentType("text/html");
                out.println("<script type='text/javascript'>");
                out.println("alert('Something is empty')");
                out.println("location='loan.jsp'");
                out.println("</script>");
            } else {

                try {
                    String sql = "insert into loan(firstname, lastname, email, city, branchcode, phno, adharcard, loanamount, timeperiod, loantype, fromdate, todate, time, user_id) values ('" + firstname + "', '" + lastname + "' , '" + email + "','" + city + "', '" + branchcode + "','" + phno + "','" + adharcard + "','" + loanamount + "','" + timeperiod + "','" + loantype + "','" + fromdate + "','" + todate + "','" + time + "','" + session.getAttribute("user_id") + "')";
                    String insert = db.Insert(sql);
                    out.println(insert);
                    resp.setContentType("text/html");
                    out.println("   <script type=\"text/javascript\">   ");
                    out.println("   alert('" + insert + "');                ");
                    out.println("   location='online_statement.jsp';            ");
                    out.println("   </script>                           ");
                } catch (Exception ex) {
                    resp.setContentType("text/html");
                    out.println("   <script type=\"text/javascript\">   ");
                    out.println("   alert('" + ex.toString() + "');                ");
                    out.println("   location='loan.jsp';            ");
                    out.println("   </script>                            ");
                }
            }
            
        }


        if (event.equals("CANCEL")) {

            resp.sendRedirect("user_homepage.jsp");

        }

    }
}
