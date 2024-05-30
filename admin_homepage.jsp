<%-- 
    Document   : admin_homepage
    Created on : 30 Mar, 2023, 1:24:51 PM
    Author     : lenovo1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/admin_homepage.css"%></style>
        
    </head> 
       <header class="header">
            <h1 class="logo">Home Page||</h1>
      <ul class="main-nav">
          
          <li><a href="atm_request.jsp">Atm request</a></li>
          <li><a href="cheque_request.jsp">Cheque request</a></li>
          <li><a href="loan_request.jsp">Loan request</a></li>
          <li><a href="view_accounts.jsp">View Accounts</a></li>
          <li><a href="view_customer.jsp">View Customer</a></li>  
          <li><a href="admin_login.jsp">Logout</a></li>
          
      </ul>
	</header>
    </head>
</html>