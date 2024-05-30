<%-- 
    Document   : new_acc
    Created on : 2 Mar, 2023, 10:20:29 AM
    Author     : lenovo1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Account</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/new_acc.css"%></style>


    </head>
    <body class="cc">
        	<header class="header">
		<h1 class="logo">Create Account Here||</a></h1>
      <ul class="main-nav">
          <li><a href="user_homepage.jsp">Home</a></li>
          <li><a href="request_atm.jsp">Atm</a></li>
          <li><a href="balance_form.jsp">Balance Form</a></li>
          <li><a href="loan.jsp">Loan</a></li>
          <li><a href="cheque_form.jsp">Cheque Form</a></li>
      </ul>
	</header> 

        <form action="new_acc"  name="new_acc" method="post">
        <div class="whitediv">
           <h1 class="h1"><B>NEW ACCOUNT</B></h1> 
            
           <div class="row">
             <div class="col-sm-2"><h4 class="h"><b>First Name </b></h4></div>
             <div class="col-sm-4"><input type="text" class="textbox" name="firstname" placeholder="Enter first name"></div>
             <div class="col-sm-2"><h4 class="h"><b>Last Name </b></h4></div>
             <div class="col-sm-4"><input type="text" class="textbox" name="lastname" placeholder="Enter last name"></div>
             
            </div>
            
            <div class="row">
                <div class="col-sm-2"><label class="h"><b>Address</b></label></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="address" placeholder="Enter Address" style="height: 50px; width: 250px;"></div>
            </div>
            
            <div class="row">
                <div class="col-sm-2"><label class="h"><b>City </b></label></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="city" placeholder="Enter city"></div>
                <div class="col-sm-2"><h4 class="h"><b>Birth Date</b></h4></div>
                <div class="col-sm-4"><input type="date" class="textbox" name="birthdate" placeholder=" "></div>
            </div>
            
            <div class="row">
                <div class="col-sm-2"><label class="h"><b>Phone No</b></label></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="phno" placeholder="Enter phone no"></div>
                <div class="col-sm-2"><h4 class="h"><b>Adhar Card No</b></h4></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="adharcard" placeholder="Enter Adhar card no "></div>
            </div>
            
              <div class="row">
               <div class="col-sm-2"><label class="h"><b>Gender</b></label></div>           
               <select name="gender" class="selectloan">
                   <option value="Male">Male</option>
                   <option value="Female">Female</option>
               </select>
            </div>
           
           <div class="row">
                <div class="col-sm-2"><label class="h"><b>Email</b></label></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="email"placeholder="Enter email" style="height: 50px; width: 250px;"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"><label class="h"><b>Image</b></label></div>
                <div class="col-sm-4"><input type="file" name="image" class="textbox" placeholder=" "></div>
                 <div class="col-sm-2"><h4 class="h"><b>Signature</b></h4></div>
                 <div class="col-sm-4"><input type="file" name="signature" class="textbox" placeholder=" "></div>
            </div>
           <div class="row">
               <div class="col-sm-2"><label class="h"><b>Account type</b></label></div>           
               <select name="accounttype"class="selectloan">
                   <option value="Student">Student</option>
                   <option value="Joint acc">Joint acc</option>
                   <option value="Saving acc">Saving acc</option>
                   <option value="Current acc">Current acc</option>
               </select>
            </div>
         
           
            <div class="row">
                <div class="col-sm-2"><label class="h"><b>Amount</b></label></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="amount" placeholder="Enter Amount" style="height: 50px; width: 250px;"></div>
            </div>
           
           
           <input type="submit" class="loginbutton" name="submit" value="Create Account">
           <input type="submit" class="cancelbutton" name="cancel" value="CANCEL">       
        </div>
    </form>
        </body>
</html>
