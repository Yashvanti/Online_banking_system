<%-- 
    Document   : request_atm
    Created on : 2 Mar, 2023, 6:34:49 PM
    Author     : lenovo1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>request atm</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/request_atm.css"%></style>
 
    </head>
    <body>
        <header class="header">
		<h1 class="logo">Request Atm||</a></h1>
      <ul class="main-nav">
          <li><a href="user_homepage.jsp">Home</a></li>
          <li><a href="loan.jsp">Loan</a></li>
          <li><a href="balance_form.jsp">Balance Form</a></li>
          <li><a href="new_acc.jsp">New Account</a></li>
          <li><a href="cheque_form.jsp">Cheque Form</a></li>
      </ul>
	</header>
        <form  action="request_atm" method="post">
        <div class="whitediv">
            <h1 class="h1"><b>ATM APPLICATION FORM</b><img class="c" src="images/atmcard.jpg" height="110px" width="20%"><br></h1>
            
            <div class="row">
                <div class="col-sm-2 h"><h4><b>Name</b></h4></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="name" placeholder=" "></div>
            </div>
            <div class="row">
                <div class="col-sm-2 h"><h4><b>Address</b></h4></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="address" placeholder=" "></div>
                <div class="col-sm-2 h"><h4><b>Pin Code</b></h4></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="pincode" placeholder=" "></div>
            </div>
            <div class="row">
                <div class="col-sm-2 h"><h4><b>City</b></h4></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="city" placeholder=" "></div>
                <div class="col-sm-2 h"><h4><b>State</b></h4></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="state" placeholder=" "></div>
            </div>
            <div class="row">
                <div class="col-sm-2 h"><h4><b>Mobile No</b></h4></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="mono" placeholder=" "></div>
                <div class="col-sm-2 h"><h4><b>Email</b></h4></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="email" placeholder=" "></div>
            </div>
            <div class="row">
                <div class="col-sm-2 h"><h4><b>Account Type</b></h4></div>           
               <select name="accounttype" class="selectaccount">
                   <option value="Saving">Saving</option>
                   <option value="Current">Current</option>
               </select>
            </div>
            <div class="row">
                <div class="col-sm-4 h"><h4><b>Gender</b></h4></div>
                <input type="radio" class="selectloan" name="gender" value="Male">Male
                <br>
                <input type="radio" class="selectloan" name="gender" value="Female">Female
            </div>
            <div class="row">
                <div class="col-sm-2 h"><h4><b>Date of birth</b></h4></div>
                <div class="col-sm-4"><input type="date" class="textbox" name="birthdate" placeholder=" "></div>
            </div>
            <div class="row">
                <div class="col-sm-2 h"><h4><b>Account no</b></h4></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="accountno" placeholder=" "></div>
                <div class="col-sm-2 h"><h4><b>Place</b></h4></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="place" placeholder=" "></div>
            </div>
            <div class="row">
                <div class="col-sm-2 h"><h4><b>Date</b></h4></div>
                <div class="col-sm-4"><input type="date" class="textbox" name="date" placeholder=" "></div>
                <div class="col-sm-2 h"><h4><b>Applicant's signature</b></h4></div>
                <div class="col-sm-4"><input type="file" class="textbox" name="signature" placeholder=" "></div>
            </div>
            <input type="submit" class="loginbutton" name="submit" value="SUBMIT">
            <input type="submit" class="cancelbutton" value="CANCEL">
        </div>
        </form>
    </body>
</html>