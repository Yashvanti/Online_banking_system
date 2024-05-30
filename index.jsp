<%-- 
    Document   : index
    Created on : 2 Mar, 2023, 9:53:16 AM
    Author     : lenovo1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/index.css"%></style>
        
        <div class="p-3 bg-dark text-white">
      <div class="flexMain">
        <div class="flex1">
    
        </div>
        <div class="flex2 text-center">
          <div><strong>Welcome To Online Banking System</strong></div>
        </div>
        <div class="flex1">
    
        </div>
      </div>
    </div>
    <div id="menuHolder">
      <div role="navigation" class="sticky-top border-bottom border-top" id="mainNavigation">
        <div class="flexMain">
          <div class="flex2">
            <button class="whiteLink siteLink" style="border-right:1px solid #eaeaea" onclick="menuToggle()"><i class="fas fa-bars me-2"></i> MENU</button>
          </div>
          <div class="flex3 text-center" id="siteBrand">
            Online Banking
          </div>
    
          <div class="flex2 text-end d-block d-md-none">
            <button class="whiteLink siteLink"><i class="fas fa-search"></i></button>
          </div>
    
          <div class="flex2 text-end d-none d-md-block">
            <a href="admin_login.jsp" class="nav-menu-item"><i class="fab fa-product-hunt me-3"></i>Admin Login</a>
            <a href="user_login.jsp" class="nav-menu-item"><i class="fas fa-search me-3"></i>User Login</a>
          </div>
        </div>
      </div>
    
      <div id="menuDrawer">
        <div class="p-4 border-bottom">
          <div class='row'>
            <div class="col">
              <select class="noStyle">
                <option value="english">English</option>
                <option value="spanish">Spanish</option>
                <option value="french">French</option>
                <option value="italian">Italian</option>
                <option value="hebrew">Hebrew</option>
              </select>
            </div>
            <div class="col text-end ">
              <i class="fas fa-times" role="btn" onclick="menuToggle()"></i>
            </div>
          </div>
        </div>
        <div>
          <a href="#" class="nav-menu-item"><i class="fas fa-home me-3"></i>Home</a>
          
        </div>
      </div>
    </div>

    </head>       
    </body>
</html>
