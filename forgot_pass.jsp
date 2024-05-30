<%--
    Document   : forgot_pass
    Created on : 3 Mar, 2023, 1:08:35 PM
    Author     : lenovo1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>forgot_pass_01</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
         <style><%@include  file="css/forgot_pass.css"%></style>
    </head>
    <body>
        <form name="forgot_pass" action="forgot_pass" method="post">
        <div class="mydiv">
           <br> <h2 class="h"><b>Forgot password</b></h2><br>   
           <h4 class="h"><b>Enter your e-mail address to send OTP to reset password.</b></h4><br>
            <h3 class="h"><b>Enter E-mail:</b></h3>
            <input name="email" class="textbox" type="Text" placeholder="Enter Your e-mail">
            <input name="submit" class="button" type="submit" value="send otp">
           
                
            </div>
        </form>
    </body>
</html>