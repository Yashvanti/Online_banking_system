<%-- 
    Document   : cheque_request
    Created on : 3 Mar, 2023, 7:41:02 PM
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
        <title>Cheque Request</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/cheque_request.css"%></style>
    </head>
    <header class="header">
            <h1 class="logo">Home Page||</h1>
      <ul class="main-nav">
          <li><a href="admin_homepage.jsp">Home</a></li>
          <li><a href="atm_request.jsp">Atm request</a></li>
          <li><a href="loan_request.jsp">Loan request</a></li>
          <li><a href="view_accounts.jsp">View Accounts</a></li>
          <li><a href="view_customer.jsp">View Customer</a></li>          
      </ul>
	</header>
    <section>
  <h1>Cheque Request</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Request ID</th>               
          <th>Account no</th>
          <th>Account type</th>
          <th>Status</th>
          <th>Action</th>.
              
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
        <%
            String id="";
           String user_id="";
           String accountno="";
           String accounttype="";
           String signature="";
           String status="";
        
        
            
            Connection cn = null;
            Statement st = null;
            
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","root");
            st=cn.createStatement();
                    
            String sql = "select * from cheque_form";
            ResultSet rs = st.executeQuery(sql);
            
            while(rs.next())
            {
                 id=rs.getString("id");
                user_id=rs.getString("user_id");
               accountno= rs.getString("accountno");
                accounttype=rs.getString("accounttype");
                signature=rs.getString("signature");
                status=rs.getString("status");
                         
        %>  
         <form action="cheque_request" name="cheque_request" method="post">
        <tr>
        <input type="hidden" name="id" value="<%=id%>">        
        <input type="hidden" name="user_id" value="<%=user_id%>">
        <input type="hidden" name="status" value="<%=status%>">
        
          <td><%= rs.getString("user_id")%></td>
          <td><%= rs.getString("accountno")%></td>
          <td><%= rs.getString("accounttype")%></td>
          <td><%= rs.getString("status")%></td>
          <td><input type="submit" class="button" value="approved" name="submit">
              <input type="submit" class="button" value="rejected" name="submit">
          </td>
        </tr>
        </form>
        <%
                  }
            %>
      </tbody>
    </table>
        
  </div>
</section>



     
</html>
