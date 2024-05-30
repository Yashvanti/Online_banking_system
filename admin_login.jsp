<%-- 
    Document   : admin_login
    Created on : 2 Mar, 2023, 6:45:17 PM
    Author     : lenovo1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/admin_login.css"%></style>
 
    </head>
    <body>
        <form name="admin_login" action="admin_login" method="post">
        
        <div class="whitediv">
           <h1 class="h"><B>WELCOME...</B></h1>
           <input class="textbox" type="text" name="name" placeholder="full name">
        <input class="textbox" type="password" name="password" placeholder="Password">
        <br><br>
        <a href="forgot_pass.jsp" class="link">forgot password</a>
        <br><br>
        <input type="submit" name="submit" class="loginbutton" value="login"><br>
        
        
        </div>
        </form>
    </body>
</html>