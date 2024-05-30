<%-- 
    Document   : transfer_money
    Created on : 2 Mar, 2023, 6:42:46 PM
    Author     : lenovo1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>transfer money</title>
        <link rel="stylesheet" type="text/css" href="css/transfer_money.css">
        <style><%@include file="css/transfer_money.css"%></style>
 
    </head>
    <body class="c">
        <header class="header">
		<h1 class="logo">Transfer Money|| </a></h1>
      <ul class="main-nav">
          <li><a href="user_homepage.jsp">Home</a></li>
          <li><a href="request_atm">Atm</a></li>
          <li><a href="balance_form.jsp">Balance Form</a></li>
          <li><a href="new_acc.jsp">New Account</a></li>
          <li><a href="cheque_form.jsp">Cheque Form</a></li>
      </ul>
	</header>
        <form action="transfer_money" method="post">
        <div class="whitediv" style="margin-left: 500px; margin-top: 50px;">
            <h1 class="h1"><B>TRANSFER MONEY</B></h1>
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
                <div class="col-sm-4"><input type="password" class="textbox" name="password" placeholder="Enter password "></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label class="h">To account</label></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="toaccount" placeholder="Enter account no "></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label class="h">Amount</label></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="amount" placeholder="Enter amount "></div>
            </div>
            <input type="submit" class="loginbutton" name="submit" value="Send Money">
            <input type="submit" class="cancelbutton" name="submit" value="CANCEL">
        </div>
    </form>
    </body>
</html>