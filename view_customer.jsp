<%-- 
    Document   : view_customer
    Created on : 3 Mar, 2023, 7:32:09 PM
    Author     : lenovo1
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Customer</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/view_customer.css"%></style>
    </head>
    
   <header class="header">
            <h1 class="logo">Home Page||</h1>
      <ul class="main-nav">
          <li><a href="admin_homepage.jsp">Home</a></li>
          <li><a href="atm_request.jsp">Atm request</a></li>
          <li><a href="cheque_request.jsp">Cheque request</a></li>
          <li><a href="loan_request.jsp">Loan request</a></li>
          <li><a href="view_accounts.jsp">View Accounts</a></li>
      </ul>
	</header> 
    
   <section>
  <h1>View Customer</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>User ID</th>
          <th>Full Name</th>
          <th>Contact</th>
          <th>Email</th>
          <th>User Name</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
        <%
            Connection cn=null;
            Statement st=null;
            
            
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","root");
                    st=cn.createStatement();
                    
                    String sql;
                    sql = "select * from user_signup  ";
                    ResultSet rs = st.executeQuery(sql);
                    
                    while(rs.next())
                                   {
            %>
                
                <tr>
                    <td><%=rs.getString("user_id")%> </td>
                    <td> <%=rs.getString("full_name")%></td>
                    <td><%=rs.getString("phno")%> </td>
                    <td><%=rs.getString("email")%> </td>
                    <td><%=rs.getString("username")%> </td>
                </tr>
                <%
                               }
                    %>
        
      </tbody>
    </table>
  </div>
</section>



     
</html>
