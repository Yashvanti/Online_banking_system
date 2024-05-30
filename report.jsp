<%-- 
    Document   : report
    Created on : 4 May, 2023, 10:28:15 AM
    Author     : lenovo1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/report.css"%></style>
    </head>
    <body>
        <form name="report" action="Report_view.jsp" method="post">
        <br><br><br><br><br>
        <div class="whitediv">
            <label><b><i>Reports</i></b></label>
            <div class="row">
                <div class="col-sm-6">
                    <input type="submit" class="textbox" value="User List" name="submit">
                    <input type="submit" class="textbox" value="New Account" name="submit">
                    
                </div>
                <div class="col-sm-6">
                    <input type="submit" class="textbox" value="Online Statement" name="submit">
                    <input type="submit" class="textbox" value="Loan" name="submit">
                </div>
                 <input type="submit" class="textbox1" value="Cheque" name="submit">
            </div>
            <div class="col-sm-6">
            <input type="text" name="id">
             <input type="submit" class="textbox" value="User Detail" name="submit">
             <br>
             <br>
             <input type="text"  name="id" >            
            <input type="submit" class="textbox" value="Account" name="submit">
        
        </div>
        
        </form>
    </body>
</html>
