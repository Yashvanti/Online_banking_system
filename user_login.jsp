<%-- 
    Document   : user_login
    Created on : 2 Mar, 2023, 9:54:17 AM
    Author     : lenovo1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/user_login.css"%></style>
 
    </head>
    <body class="c">
        <form name="user_login" action="user_login" method="post">
        <div class="whitediv">
           <h1 class="h"><B>WELCOME...</B></h1>
           <input class="textbox" type="text" name="username" placeholder="user name">
        <input class="textbox" type="password" name="password" placeholder="Password">
        <br><br>
        <a href="forgot_pass.jsp" class="link">forgot password</a>
        
        <br><br>
        <input type="submit" name="submit" class="button" value="login"><br>
        
        <a href="user_signup.jsp" class="link2"> Don't have an account? sign_up first</a>
        
        </div>
        </form>
    </body>
   
</html>
