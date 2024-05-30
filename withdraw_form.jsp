<%-- 
    Document   : withdraw_form
    Created on : 10 Apr, 2023, 10:02:25 AM
    Author     : lenovo1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Withdraw Form</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">

    </head>
    <header class="header">
		<h1 class="logo">Withdraw Form||</h1>
      <ul class="main-nav">
          <li><a href="user_homepage.jsp">Home</a></li>
          <li><a href="request_atm.jsp">Atm</a></li>
          <li><a href="balance_form.jsp">Balance Form</a></li>
          <li><a href="new_acc.jsp">New Account</a></li>
          <li><a href="cheque_form.jsp">Cheque Form</a></li>
      </ul>
	</header>
    <body>
        <style>
        .c
        {
            background-color:white;
            background-image: url("images/de4.jpg");
            background-repeat:no-repeat;
            background-size:cover;
        }
        .c1
        {
            font-style: italic;
            font-size: 15px;
            height:100px;
            width:450px;
            margin-left:30px;
            margin-top:20px;
            border-radius:5px;
            color: black;
        }
        .c2
        {
            padding-left:90px;
            padding-top:130px;
        }
        
       .whitediv
        {   
            background-color:transparent;
            height:350px;
            width:610px;
            margin-left: 10px;
            margin-top:60px;
            border-radius:5px;
            outline: 5px solid whitesmoke;
            box-shadow: 5px 5px 5px 5px black;
    
        } 
         
        .h
        {
            font-style: italic;
            font-size: 20px;            
            margin-left:30px;
            margin-top:20px;
            border-radius:5px;
            color: #761c19;
        }
        
        .textbox
        {
         
            margin-left:2px;
            margin-top:20px;
            font-size: 18px;
            font-style: italic;
            height:40px;
            width:260px;
            border-radius:5px;
            border:2px solid black;
            border-color: black;
            
        }
    
        .button
        {
            margin-left: 90px;
            margin-top: 40px;
            height:40px;
            width:120px;
            border-radius:5px;
            color: white;
            background-color: darkgreen;
            font-size:16px;
            font-style: bold;
        }
        
                              /* Navigation Bar */
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
	color: skyblue;
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
	color:whitesmoke;
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
        
              <div class="c1">

                       <h1 style="color: black;" class="c2"><b>Withdraw Money</b></h1>

        <form method="post" action="withdraw_form">    
    <div class="whitediv">
        
        <div class="row">
             <div class="col-sm-1"></div>
             <div class="col-sm-1"><i class="fa fa-user-circle-o" style="font-size:30px;margin-left: 10px;margin-top: 20px"></i></div>
             <div class="col-sm-4"><h3 class="h"><b><i>Account No:</i></b></h3></div>
             <div class="col-sm-5"><input type="text" class="textbox"  onkeypress="return isNumber(event)"  name="accno" placeholder=""></div>
        </div>     
       
        <div class="row">
             <div class="col-sm-1"></div>
             <div class="col-sm-1"><i class="fa fa-user" style="font-size:30px;margin-left: 10px;margin-top: 20px"></i></div>
             <div class="col-sm-4"><h3 class="h"><b><i>User Name:</i></b></h3></div>
             <div class="col-sm-5"><input type="text" class="textbox" onkeypress="return isString(event)" name="uname"></div>
        </div>
   
        
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-1"><i class="fa fa-lock" style="font-size:30px;margin-left: 10px;margin-top: 20px"></i></div>
            <div class="col-sm-4"><h3 class="h"><b><i>Password:</i></b></h3></div>
            <div class="col-sm-5"><input type="password" class="textbox" name="pass"></div>
        </div>
        
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-1"><i class="fa fa-money" style="font-size:30px;margin-left: 10px;margin-top: 20px"></i></div>
            <div class="col-sm-4"><h3 class="h"><b><i>Amount:</i></b></h3></div>
            <div class="col-sm-5"><input type="text" class="textbox"  onkeypress="return isNumber(event)" name="amt"></div>
        </div>
        
        
            
        <button class="button" name="submit" value="submit"><i>SUBMIT</i></button>
        <button style="background-color: red;"class="button" name="submit" value="cancel"><i>CANCEL</i></button>
        
    </div>
    </div>
        </form>
    </body>
        

</html>
