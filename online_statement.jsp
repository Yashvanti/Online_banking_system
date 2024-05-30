<%-- 
    Document   : online_statement
    Created on : 2 Mar, 2023, 6:40:28 PM
    Author     : lenovo1
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Statement</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/online_statement.css"%></style>
    </head>
    <header class="header">
		<h1 class="logo">Online Statement||</h1>
                <ul class="main-nav">
                    <li><a href="user_homepage.jsp">Home</a></li>
                    <li><a href="request_atm.jsp">Atm</a></li>
                    <li><a href="balance_form.jsp">Balance Form</a></li>
                    <li><a href="new_acc.jsp">New Account</a></li>
                    <li><a href="cheque_form.jsp">Cheque Form</a></li>
                </ul>
	</header>
    <style>
            .div1
            {
                height: 400px;
                width: 800px;
                background-color:transparent;
                outline: 5px solid green;
                box-shadow: 5px 5px 5px 5px black;
                border-radius: 5px;
                margin-left: 300px;
                margin-top: 50px;
            }
            .textbox
            {
                height: 40px;
                width: 50%;
                margin-top: 22%;
                margin-left: 20%;
                border-left-style: hidden;
                border-right-style: hidden;
                border-top-style: hidden;
                
     
            }
            .lab
            {
                height: 20px;
                width: 20px;
                margin-top: 20%;
                color: black;
                
            }
            .left
            {
                float: left;
                
            }
            .right
            {
                float: right;
                
            }
            .btn
            {
                margin-left: 50px;
                margin-top: 30px;
                height: 45px;
                width: 100px;
                font-size: 18px;
                border-radius: 23px;
                background-color: yellowgreen;
                color: black;
                
            }
            th
            {
                background-color: #245269;
                color: white;
                height: 40px;
                width: 220px;
            }
          td
          {
              background-color: whitesmoke;
              height: 40px;
                width: 220px;
          }
          
          .submit
          {
              margin-left: 40%;
              margin-top: 1%;
          }
          table{
              margin-top: 60%;
              
          }
            
        </style>
    </head>
    <body>
        <form name="online_statement" action="online_stament" method="post">
        <div class="col-sm-6 div1">
            <div class="col-sm-6" left>
            <label class="lab">Account No</label>
            <input type="text"name="accountno" class="textbox" placeholder="Enter Account No" onkeypress="return isNumber(event);">

            <br>
       
        
 
            
            <label class="lab">From Date</label>
            <input type="date"name="fromdate" class="textbox" placeholder="Enter from date">

            <br>
        
              
            </div>
            
            <div class="col-sm-6" right>
    

            <label class="lab">Choose Account Type</label>
            <input type="saving"name="accounttype" class="textbox" placeholder=" saving">
            
            <br>
            
            
              <label class="lab">To Date</label>
              <input type="date"name="todate" class="textbox" placeholder="Enter to date">

             <br>
             
            </div>
            <div class="col-sm-3 submit"><input class="btn" type="submit"  name="submit" value="submit"></div>
        </div>
        </div>
        <br>
        <div class="limiter" style="margin: -20% 0 0 6%;">
            <div class="container-table100" >
                <div class="wrap-table100" style="margin-top: -20px;" >
                    <div class="table100" >
                        <table>
                            <thead style="text-align:center;">
                                <tr class="table100-head">
                                    <th class="column1">Date</th>
                                    <th class="column2">Transaction Type</th>
                                    <th class="column3">Debit Amount</th>
                                    <th class="column4">Credit Amount</th>
                                    <th class="column5">Balance</th>
                                    <th class="column5">Account</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                
                                String id="";
                                String Date="";
                                String TransactionType="";
                               String DebitAmount="";
                               String CreditAmount="";
                                String Balance="";
                               String AccountNo="";
            
                               
                               String user_id = session.getAttribute("user_id").toString();
                               
                               session.setAttribute("user_id",user_id);
                               
                               Connection cn=null;
                               Statement st=null;
                               
                                 
                                Class.forName("com.mysql.jdbc.Driver");
                                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","root");
                                st=cn.createStatement();
                               
                               String sql="select * from online_statement where (date >= '"+session.getAttribute("fromdate") +"' && date <= '"+session.getAttribute("todate") +"' &&  accountno ='"+session.getAttribute("accountno") +"')";
                               ResultSet rs=st.executeQuery(sql);
                                 
                               while(rs.next())
                               {
                                 id=rs.getString("id");
                        Date=rs.getString("Date");
                        TransactionType=rs.getString("TransactionType");
                        DebitAmount=rs.getString("DebitAmount");
                        CreditAmount=rs.getString("CreditAmount");
                        Balance=rs.getString("Balance");
                        AccountNo=rs.getString("Accountno");
                                 
                                 %>
                                 <tr>
                                     
                                     <td class="column1"><%=Date%></td>
                                    <td class="column2"><%=TransactionType%></td>
                                    <td class="column3"><%=DebitAmount%></td>
                                    <td class="column4"><%=CreditAmount%></td>
                                    <td class="column5"><%=Balance%></td>
                                    <td class="column5"><%=AccountNo%></td>
                                 </tr>
                                 <% } %>
                               
                               
                        </tbody>
                      </table>
                   </div>
               </div>
           </div>
       </div>
    </form>
        
    </body>
</html>
