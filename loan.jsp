<%-- 
    Document   : loan
    Created on : 2 Mar, 2023, 6:32:14 PM
    Author     : lenovo1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loan</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/loan.css"%></style>


    </head>
    <body class="cc">
        <header class="header">
		<h1 class="logo">Loan||</h1>
      <ul class="main-nav">
          <li><a href="user_homepage.jsp">Home</a></li>
          <li><a href="request_atm.jsp">Atm</a></li>
          <li><a href="balance_form.jsp">Balance Form</a></li>
          <li><a href="new_acc.jsp">New Account</a></li>
          <li><a href="cheque_form.jsp">Cheque Form</a></li>
      </ul>
	</header>
        <form action="loan" name="loan" method="post">
        <div class="whitediv1">
           <h1 class="h1"><B>LOAN</B></h1> 
                       
         <div class="row">
             <div class="col-sm-2"><h4 class="h"><b>First Name -</b></h4></div>
             <div class="col-sm-4"><input type="text" class="textbox" name="firstname" placeholder="Enter first name"></div>
             <div class="col-sm-2"><h4 class="h"><b>Last Name -</b></h4></div>
             <div class="col-sm-4"><input type="text" class="textbox" name="lastname" placeholder="Enter last name"></div>
             
            </div>
            
            <div class="row">
                <div class="col-sm-2"><label class="h"><b>Email_Id -</b></label></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="email" placeholder="Enter Email" style="height: 35px; width: 220px;"></div>
            </div>
            
            <div class="row">
                <div class="col-sm-2"><label class="h"><b>City -</b></label></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="city" placeholder="Enter city"></div>
                <div class="col-sm-2"><h4 class="h"><b>Branch Code -</b></h4></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="branchcode" placeholder="Enter branch code"></div>
            </div>
            
            <div class="row">
                <div class="col-sm-2"><label class="h"><b>Phone No-</b></label></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="phno" placeholder="Enter phone no"></div>
                 <div class="col-sm-2"><h4 class="h"><b>Adhar Card No-</b></h4></div>
                 <div class="col-sm-4"><input type="text" class="textbox" name="adharcard" placeholder="Enter adhar no"></div>
            </div>
            
            <div class="row">
                <div class="col-sm-2"><label class="h"><b>Loan Amount -</b></label></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="loanamount" placeholder="Enter loan amount"></div>
                 <div class="col-sm-2"><h4 class="h"><b>Time Period-</b></h4></div>
                 <div class="col-sm-4"><input type="time" class="textbox" name="timeperiod" placeholder=" "></div>
            </div>
            <div class="row">
               <div class="col-sm-2"><label class="h"><b>Loan Type</b></label></div>           
               <select name="loantype" class="selectloan">
                   <option name="loantype" value="Education Loan">Education Loan</option>
                   <option name="loantype" value="Vehicle Loan">Vehicle Loan</option>
                   <option name="loantype" value="Home Loan">Home Loan</option>
                   <option name="loantype" value="Gold Loan">Gold Loan</option>
               </select>
            </div>
           <div class="row">
                <div class="col-sm-2"><label class="h"><b>From Date</b></label></div>
                <div class="col-sm-4"><input type="date" class="textbox" name="fromdate" placeholder="Enter loan amount"></div>
                 <div class="col-sm-2"><h4 class="h"><b>To Date</b></h4></div>
                 <div class="col-sm-4"><input type="date" class="textbox" name="todate" placeholder=" "></div>
            </div>
           
            <div class="row">
                <div class="col-sm-2"><label class="h"><b>Time -</b></label></div>
                <div class="col-sm-4"><input type="time" class="textbox" name="time" placeholder=" "></div>
            </div>
           
           
               
               
           
           <input type="submit" class="loginbutton" name="submit" value="APPLY">
           <input type="submit" class="cancelbutton" name="submit" value="CANCEL">
           <br>
           
            
        </div>
           
    </form>
        </body>
</html>