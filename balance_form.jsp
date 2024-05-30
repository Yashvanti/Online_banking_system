<%-- 
    Document   : balance_form
    Created on : 2 Mar, 2023, 10:25:10 AM
    Author     : lenovo1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Balance Form</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
            <style><%@include file="css/balance_form.css"%></style>
             
    </head>
    <body class="c">
        <header class="header">
		<h1 class="logo">Balance Form||</a></h1>
      <ul class="main-nav">
          <li><a href="user_homepage.jsp">Home</a></li>
          <li><a href="request_atm.jsp">Atm</a></li>
          <li><a href="loan.jsp">Loan</a></li>
          <li><a href="new_acc.jsp">New Account</a></li>
          <li><a href="cheque_form.jsp">Cheque Form</a></li>
      </ul>
	</header>
        <form action="balance_form"  name="balance_form" method="post">
        <div class="whitediv">
            <h1 class="h1"><B>BALANCE FORM</B></h1>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label class="h">Account no</label></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="accountno" placeholder="Enter account no "></div>
            </div>
         <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label class="h">User name</label></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="usernm" placeholder="Enter username "></div>
            </div>
         <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label class="h">Password</label></div>
                <div class="col-sm-4"><input type="password" class="textbox" name="password" placeholder="Enter password"></div>
            </div>
            
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label class="h">Balance</label></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="balance"  disabled="true" value="<%=session.getAttribute("balance")%>"></div>
            </div>
            <input type="submit" class="loginbutton" name="submit" value="SUBMIT">
            <input type="submit" class="cancelbutton" name="submit" value="CANCEL">
        </div>
        </form>
    </body>
</html>
