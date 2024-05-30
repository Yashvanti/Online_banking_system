<%-- 
    Document   : cheque_form
    Created on : 2 Mar, 2023, 6:27:47 PM
    Author     : lenovo1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cheque Form</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/cheque_form.css"%></style>
 
     </head>
    <body class="c">
        <header class="header">
		<h1 class="logo">Cheque Form||</a></h1>
      <ul class="main-nav">
          <li><a href="user_homepage.jsp">Home</a></li>
          <li><a href="request_atm.jsp">Atm</a></li>
          <li><a href="balance_form.jsp">Balance Form</a></li>
          <li><a href="new_acc.jsp">New Account</a></li>
          <li><a href="transfer_money.jsp">Transfer Money</a></li>
      </ul>
	</header>
        <form action="cheque_form" method="post">
            <div class="whitediv" style="margin-left: 720px; margin-top: 180px;">
            <h1 class="h1"><B>CHEQUE FORM</B></h1>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label class="h">Account no</label></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="accountno" placeholder="Enter Account no"></div>
            </div>
         <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label class="h">Account type</label></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="accounttype" placeholder="Enter Account type"></div>
            </div>            
         <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label class="h">Signature</label></div>
                <div class="col-sm-4"><input type="file" class="textbox" name="signature" placeholder="choose file"></div>
            </div>
            <input type="submit" class="loginbutton" name="submit" value="SUBMIT">
            <input type="submit" class="cancelbutton" name="submit" value="CANCEL">
        </div>
    </form>
    </body>
</html>