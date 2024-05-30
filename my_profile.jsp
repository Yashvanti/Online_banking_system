<%--
    Document   : my_profile
    Created on : 2 Mar, 2023, 6:37:00 PM
    Author     : lenovo1
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/my_profile.css"%></style>
    </head>
    <header class="header">
		<h1 class="logo">My Profile||</a></h1>
      <ul class="main-nav">
          <li><a href="user_homepage.jsp">Home</a></li>
          <li><a href="request_atm.jsp">Atm</a></li>
          <li><a href="balance_form.jsp">Balance Form</a></li>
          <li><a href="new_acc.jsp">New Account</a></li>
          <li><a href="transfer_money.jsp">Transfer Money</a></li>
      </ul>
	</header>
        
    <style>
        .c
        {
            
            background-color: lightsteelblue;
        }
        .c1
        {
            font-style: italic;
            font-size: 15px;
            height:100px;
            width:450px;
            margin-left:30px;
            margin-top:20px;
            border-radius:5px
        }
        .c2
        {
            padding-left:50px;
            padding-top:10px;
        }
        
       .whitediv
        {   
            background-color:transparent;
            height:750px;
            width:700px;
            margin-left:40px;
            margin-top: 100px;
            border-radius:5px;
        }  
       .whitediv5
        {   
            background-color:transparent;
            height:400px;
            width:700px;
            outline:5px solid whitesmoke;
            box-shadow: 5px 5px 5px 5px black;
            margin-left:40px;
            margin-top: 100px;
            border-radius:5px;
        } 
          
        .whitediv1
        {   
            background-color:lightgray;
            height:150px;
            width:150px;
            margin-left:-10px;
            margin-top:25px;
            border-radius:5px;
        } 
        .c4
        {
            
            background-image: url("image1/cl4.jpg");
            background-repeat:no-repeat;
            background-size:100%;
        }
        
        .whitediv2
        {   
            background-color:lightgray;
            height:150px;
            width:150px;
            margin-left:350px;
            margin-top:-155px;
            border-radius:5px;
        } 
        
        .textbox
        {
         
            margin-left:2px;
            margin-top:50px;
            font-size: 18px;
            font-style: bold;
            height:40px;
            width:300px;
            border-radius:5px;
            border:2px solid black;
            border-color: black;
            
        }
    
        .button
        {
            margin-left:200px;
            margin-top:-150px;
            height:40px;
            width:120px;
            border-radius:5px;
            color: white;
            background-color: darkgreen;
            font-size:16px;
            font-style: bold;
        }
        
               /* Navigation Bar */
.home
{
    margin-top:-0px;
    height:745px;
    width:1535px;
    background-size: cover;
    
}
.h
{
    color: black;
}
* {
	box-sizing: border-box;
}
body {
	font-family: 'Montserrat', sans-serif;
	line-height: 1.6;
	margin: 0;
	min-height: 100vh;
}
ul {
  margin: 0;
  padding: 0;
  list-style: none;
  color: whitesmoke;
  font-size: 18px;
}


h2,
h3,
a {
	color:whitesmoke;
}

a {
	text-decoration: none;
}



.logo {
	margin: 0;
	font-size: 1.45em;
}

.main-nav {
	margin-top: 5px;

}
.logo a,
.main-nav a {
	padding: 10px 15px;
	text-transform: uppercase;
	text-align: center;
	display: block;
}

.main-nav a {
	color: whitesmoke;
	font-size: .99em;
}

.main-nav a:hover {
	color: #718daa;
}



.header {
	padding-top: .5em;
	padding-bottom: .5em;
	border: 1px solid #a2a2a2;
	background-color: transparent;
        color: whitesmoke;
	-webkit-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.75);
	-moz-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.75);
	box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.75);
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}


/* ================================= 
  Media Queries
==================================== */




@media (min-width: 769px) {
	.header,
	.main-nav {
		display: flex;
	}
	.header {
		flex-direction: column;
		align-items: center;
    	.header{
		width: 80%;
		margin: 0 auto;
		max-width: 1150px;
	}
	}

}

@media (min-width: 1025px) {
	.header {
		flex-direction: row;
		justify-content: space-between;
	}

}

    </style>
    
    <body class="c">
        
        

<div class="row">

 <%
               
               String user_id="";
               String firstname="";
               String LastName="";
               String address="";
               String city="";
               String birthdate="";
               String gender="";
               String phno="";
               String EmailAddress="";
               String Image="";
               String Amount="";
               String accounttype="";
               String id = "";
               String account_number="";
               Connection cn=null;
               Statement st=null;
               
               Class.forName("com.mysql.jdbc.Driver");
               cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","root");
               st=cn.createStatement(); 
               
               String sql="select * from new_acc where user_id= '"+session.getAttribute("user_id")+"' ";
               ResultSet rs=st.executeQuery(sql);
               
               while(rs.next())
               {
                   id=rs.getString("account_number");
                   user_id =rs.getString("user_id");
                   firstname=rs.getString("firstname");
                   LastName=rs.getString("LastName");
                   address=rs.getString("Address");
                   city=rs.getString("city");
                   birthdate=rs.getString("birthdate");
                   gender=rs.getString("gender");
                   phno=rs.getString("phno");
                   EmailAddress=rs.getString("email");
                   Image=rs.getString("Image");
                   Amount=rs.getString("Amount");
                   accounttype=rs.getString("accounttype");
                   account_number=rs.getString("account_number");
	%>

        <div class="col-sm-6">
  <div class="whitediv">

      <br>        
       <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-2"><h4 class="h"><b><i>Account No:</i></b></h4></div>
            <div class="col-sm-2"><h4 class="h" ><b><i><%=account_number%></i></b></h4></div>
       </div>
      <br>
       <div class="row">
           <div class="col-sm-1"></div>
            <div class="col-sm-2"><h4 class="h"><b><i>FirstName:</i></b></h4></div>
            <div class="col-sm-2"><h4 class="h" ><b><i><%=firstname%></i></b></h4></div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3"><h4 class="h"><b><i>Last Name:</i></b></h4></div>
            <div class="col-sm-2"><h4 class="h" ><b><i><%=LastName%></i></b></h4></div>
        </div>
      <br> 
      <div class="row">
           <div class="col-sm-1"></div>
            <div class="col-sm-2"><h4 class="h"><b><i>Account Type:</i></b></h4></div>
            <div class="col-sm-2"><h4 class="h" ><b><i><%=accounttype%></i></b></h4></div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3"><h4 class="h"><b><i>Phone No:</i></b></h4></div>
            <div class="col-sm-2"><h4 class="h" ><b><i><%=phno%></i></b></h4></div>
        </div>
      <br>
      <div class="row">
           <div class="col-sm-1"></div>
            <div class="col-sm-2"><h4 class="h"><b><i>Birth Date:</i></b></h4></div>
            <div class="col-sm-2"><h4 class="h" ><b><i><%=birthdate%></i></b></h4></div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3"><h4 class="h"><b><i>Gender:</i></b></h4></div>
            <div class="col-sm-2"><h4 class="h" ><b><i><%=gender%></i></b></h4></div>
            
        </div>
         
      <br>
      <div class="row">
           <div class="col-sm-1"></div>
            <div class="col-sm-2"><h4 class="h"><b><i>Address</i></b></h4></div>
            <div class="col-sm-2"><h4 class="h" ><b><i><%=address%></i></b></h4></div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3"><h4 class="h"><b><i>City:</i></b></h4></div>
            <div class="col-sm-2"><h4 class="h" ><b><i><%=city%></i></b></h4></div>
             
        </div>
        
            
        <div class="row">
           <div class="col-sm-1"></div>
           <div class="col-sm-2"><div class="whitediv1" style="background-image: url('images/<%=Image%>'); height:100%px; width:170%; background-size:cover;"></div>
               <div class="col-sm-2"><h4 class="c4"></h4></div>
           </div>
        </div>
             
        <div class="row">
           <div class="col-sm-1"></div>
            <div class="col-sm-2"><h4 class="whitediv2"  style="background-image: url('images/<%=Image%>'); height:100%px; width:170%; background-size:cover; "></div>
            <div class="col-sm-2"><h4 class="h"><b><i></i></b></h4></div>
         <div class="col-sm-1"></div>
             
        </div>
        
      <br>
      
      <br><br>
         
        
        
    </div> 

 
        </div>
   <% } %>
        
       
</div> 
   
   
   
   
   
   
   <div class="row">



        <div class="col-sm-6">
            
            
             <%
               
               String id1="";
               String user_id1="";
               String cheque_no1="";
               String AccountType1="";
               String Signature1="";
               String accountno=""; 
               String loanamount="";
               
               Class.forName("com.mysql.jdbc.Driver");
               cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","root");
               st=cn.createStatement(); 
               
               String sql1="select * from cheque_form where user_id= '"+session.getAttribute("user_id")+"' ";
               ResultSet rs1=st.executeQuery(sql1);
               
               while(rs1.next())
               {
                   id1=rs1.getString("id");
                   user_id1=rs1.getString("user_id");
                   cheque_no1 =rs1.getString("cheque_no");
                   Signature1=rs1.getString("Signature");
                   AccountType1=rs1.getString("AccountType");
                   accountno=rs.getString("accountno");
                   loanamount=rs.getString("loanamount");
               }
               
	%>
  <div class="whitediv5">
                <h1 style="color: black; padding-top: 20px; padding-left: 250px;" class="c2"><b>Cheque details</b></h1>

      <br>        
       <div class="row">
           <div class="col-sm-1"></div>
            <div class="col-sm-2"><h4 class="h"><b><i>Request ID:</i></b></h4></div>
            <div class="col-sm-2"><h4 class="h" ><b><i><%=id%></i></b></h4></div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3"><h4 class="h"><b><i>Account Status:</i></b></h4></div>
            <div class="col-sm-2"><h4 class="h" ><b><i><%=status%></i></b></h4></div>
        </div>  
        <br>
        <div class="row">
           <div class="col-sm-1"></div>
            <div class="col-sm-2"><h4 class="h"><b><i>Your ID:</i></b></h4></div>
            <div class="col-sm-2"><h4 class="h" ><b><i><%=user_id%></i></b></h4></div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3"><h4 class="h"><b><i>Cheque No:</i></b></h4></div>
            <div class="col-sm-2"><h4 class="h" ><b><i><%=accountno%></i></b></h4></div>
        </div>  
        <br>
        
        <div class="row">
           <div class="col-sm-1"></div>
           <div class="col-sm-2"><div class="whitediv1" style="background-image: url('<%=Signature1%>')"></div>
           <div class="col-sm-2"><h4 class="c4"></h4></div>
           </div>
        </div>
       
        </div>
        
      <br>
     
        
    </div> 
           <div class="col-sm-6">
             
            <%--
             <%
               
               String id2="";
               String user_id2="";
               String Select_loan_type2="";
               String account_no2="";
               String status2=""; 
                String loantype="";
                String loanamount="";
               
               Class.forName("com.mysql.jdbc.Driver");
               cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","root");
               st=cn.createStatement(); 
               
               String sql2="select * from loan where user_id= '"+session.getAttribute("user_id")+"' ";
               ResultSet rs2=st.executeQuery(sql2);
               
               while(rs2.next())
               {
                   id2=rs2.getString("id");
                   user_id2=rs2.getString("user_id");
                   Select_loan_type2 =rs2.getString("Select_loan_type");
                   loanamount=rs.getString("loanamount");
                   account_no2=rs2.getString("account_no");
                   status2=rs2.getString("status"); 
                   loantype=rs.getString("loantype");
               }
               
	%>
  <div class="whitediv5">
                <h1 style="color: black; padding-top: 20px;padding-left: 250px;" class="c2"><b>Loan Details</b></h1>

      <br>        
       <div class="row">
           <div class="col-sm-1"></div>
            <div class="col-sm-2"><h4 class="h"><b><i>Request ID:</i></b></h4></div>
            <div class="col-sm-2"><h4 class="h" ><b><i><%=id%></i></b></h4></div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3"><h4 class="h"><b><i>Account Status:</i></b></h4></div>
            <div class="col-sm-2"><h4 class="h" ><b><i><%=status%></i></b></h4></div>
        </div>  
        <br>
        <div class="row">
           <div class="col-sm-1"></div>
            <div class="col-sm-2"><h4 class="h"><b><i>Your ID:</i></b></h4></div>
            <div class="col-sm-2"><h4 class="h" ><b><i><%=user_id%></i></b></h4></div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3"><h4 class="h"><b><i>Loan Type:</i></b></h4></div>
            <div class="col-sm-2"><h4 class="h" ><b><i><%=loantype%></i></b></h4></div>
        </div>  
        <br>
        <div class="row">
           <div class="col-sm-1"></div>
            <div class="col-sm-2"><h4 class="h"><b><i>Loan Amount:</i></b></h4></div>
            <div class="col-sm-2"><h4 class="h" ><b><i><%=loanamount%></i></b></h4></div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3"><h4 class="h"><b><i>Account No:</i></b></h4></div>
            <div class="col-sm-2"><h4 class="h" ><b><i><%=account_number%></i></b></h4></div>
        </div>  
        <br>
         
             
         
             
        </div>
            --%>
        
      <br>
     
        
    </div> 

 
        </div>
 
</div>
 
        
   </div>
     
    </body>
</html>
</html>