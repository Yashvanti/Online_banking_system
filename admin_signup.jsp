<%-- 
    Document   : admin_signup
    Created on : 2 Mar, 2023, 6:49:08 PM
    Author     : lenovo1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Sign-Up</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/admin_signup.css"%></style>
 
    </head>
    <body class="c">
        <form name="admin_signup" action="admin_signup" method="post">
        <div class="whitediv">
            <h1 class="h1"><B>SIGN-IN</B></h1> 
        
         <div class="row">
             <div class="col-sm-2"><h4 class="h"><b>Full Name </b></h4></div>
             <div class="col-sm-4"><input type="text" name="name" class="textbox" placeholder="enter full name"></div>
         </div> 
             <div class="row">
                <div class="col-sm-2"><label class="h"><b>Phone No </b></label></div>
                 <div class="col-sm-4"><input type="text" name="phno" class="textbox" placeholder="enter phone no"></div>
             </div>
             <div class="row">
                <div class="col-sm-2"><label class="h"><b>Email_Id </b></label></div>
                <div class="col-sm-4"><input type="text" name="email" class="textbox" placeholder="enter Email" style="height: 50px; width: 300px;"></div>
            </div>
           <div class="row">
                <div class="col-sm-2"><label class="h"><b>admin name </b></label></div>
                <div class="col-sm-4"><input type="text" name="adminname" class="textbox" placeholder="enter name"></div>
           </div>
            <div class="row">
                <div class="col-sm-2"><label class="h"><b>Password </b></label></div>
                <div class="col-sm-4"><input type="password" name="password" class="textbox" placeholder="enter password"></div>
           </div>
           <div class="row">
                <div class="col-sm-2"><label class="h"><b>Re-password </b></label></div>
                <div class="col-sm-4"><input type="password" name="repassword" class="textbox" placeholder="confirm password"></div>
           </div>
            <input type="submit" class="signinbutton" name="submit" value="SIGN-IN">
        </div>  
        </form>
    </body>
</html>