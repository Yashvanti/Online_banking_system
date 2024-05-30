<%-- 
    Document   : user_signup
    Created on : 2 Mar, 2023, 10:14:57 AM
    Author     : lenovo1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User sign_up</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/user_signup.css"%></style>
 
    </head>
    <body class="c">
        
        <form action="user_signup" method="post">
        <div class="whitediv">
            <h1 class="h1"><B>SIGN-IN</B></h1> 
          
         <div class="row">
             <div class="col-sm-2"><h4 class="h"><b>Full Name </b></h4></div>
             <div class="col-sm-4"><input type="text" class="textbox" name="full_name" placeholder="enter full name"></div>
         </div> 
             <div class="row">
                <div class="col-sm-2"><label class="h"><b>Phone No </b></label></div>
                 <div class="col-sm-4"><input type="text" class="textbox" name="phno" placeholder="enter phone no"></div>
             </div>
             <div class="row">
                <div class="col-sm-2"><label class="h"><b>Email_Id </b></label></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="email" placeholder="enter Email" style="height: 50px; width: 220px;"></div>
            </div>
           <div class="row">
                <div class="col-sm-2"><label class="h"><b>User name </b></label></div>
                <div class="col-sm-4"><input type="text" class="textbox" name="username" placeholder="enter user name"></div>
           </div>
            <div class="row">
                <div class="col-sm-2"><label class="h"><b>Password </b></label></div>
                <div class="col-sm-4"><input type="password" class="textbox" name="password" placeholder="enter password"></div>
           </div>
           <div class="row">
                <div class="col-sm-2"><label class="h"><b>Re-password </b></label></div>
                <div class="col-sm-4"><input type="password" class="textbox" name="repassword" placeholder="confirm password"></div>
           </div>
            <input type="submit" class="signinbutton" value="SIGN-IN" name="submit">
          
        </div>   
        </form>
    </body>
</html>