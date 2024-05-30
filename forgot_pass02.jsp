<%-- 
    Document   : forgot_pass02
    Created on : 3 Mar, 2023, 6:39:47 PM
    Author     : lenovo1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot_password_01</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
         <style><%@include  file="css/forgot_pass02.css"%></style>
    </head>
    <body>
        <form name="forgot_pass02" action="forgot_pass02" method="post">
            <div class="mydiv">
           <br> <h2 class="h"><b>Verify OTP</b></h2> <br> 
           <h4 class="h"><b>OTP sent to your Registreted E-mail.</b></h4>
           <a href="forgot_pass.jsp" class="link l">Change E-mail?</a><br><br>
            <h2 class="h"><b>Enter OTP</b></h2>
            <input name="OTP" class="textbox" type="Text" placeholder="Enter Your OTP"><br>
            <a href="forgot_pass.jsp" class="link l">Re-send OTP</a><br><br>
            <h3 class="h"><b>New password</b></h3>
            <input name="npass" type="text" class="textbox" placeholder="Enter New Password"><br><br>
            <h3 class="h"><b>Confirm password</b></h3>
            <input name="cpass" type="text" class="textbox" placeholder="Confirm Password"><br>
            <input class="button" name="submit" type="submit" value="Verify ">
           
                
            </div>
        </form>
    </body>
</html>