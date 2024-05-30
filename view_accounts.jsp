<%-- 
    Document   : view_accounts
    Created on : 3 Mar, 2023, 6:50:52 PM
    Author     : lenovo1
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Accounts</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/view_accounts.css"%></style>
    </head>
    <header class="header">
            <h1 class="logo">Home Page||</h1>
      <ul class="main-nav">
          <li><a href="admin_homepage.jsp">Home</a></li>
          <li><a href="atm_request.jsp">Atm request</a></li>
          <li><a href="cheque_request.jsp">Cheque request</a></li>
          <li><a href="loan_request.jsp">Loan request</a></li>
          <li><a href="view_customer.jsp">View Customer</a></li>          
      </ul>
	</header>
    <section>
  <!--for demo wrap-->
  <h1>View Accounts</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
               <th>User ID</th>
               <th>First Name</th>
               <th>Last Name</th>
               <th>City</th>
               <th>Phone no</th>
               <th>Account Type</th>
               <th>Email</th>
               <th>Image</th>
               <th>Account Number</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
        <%
            Connection cn = null;
            Statement st = null;
            
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","root");
            st=cn.createStatement();
                    
            String sql = "select * from new_acc";
            ResultSet rs = st.executeQuery(sql);
            
            while(rs.next())
            {

        %>  
         
        <tr>
          <td><%= rs.getString("user_id")%></td>
          <td><%= rs.getString("firstname")%></td>
          <td><%= rs.getString("lastname")%></td>
          <td><%= rs.getString("city")%></td>
          <td><%= rs.getString("phno")%></td>
          <td><%= rs.getString("accounttype")%></td>
          <td style="margin-left: 20px;"><%= rs.getString("email")%></td>
          <td><img style="height: 100px; width: 100px; margin-left: 10px; border-radius: 50px;" src="images/<%=rs.getString("image")%>"</td>
          <td><%= rs.getString("account_number")%></td>
        </tr>
        
            <% 
               }
            %>
      </tbody>
    </table>
  </div>
</section>
 
</html>
