<%@page import="Model.Seller"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx">
   <head>
      <title>Ecommerce</title>
      <!--meta tags -->
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="keywords" content="Toys Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
         Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
      <script>
         addEventListener("load", function () {
         	setTimeout(hideURLbar, 0);
         }, false);
         
         function hideURLbar() {
         	window.scrollTo(0, 1);
         }
      </script>
      <!--//meta tags ends here-->
      <!--booststrap-->
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
      <!-- //font-awesome icons -->
      <!--Shoping cart-->
      <link rel="stylesheet" href="css/shop.css" type="text/css" />
      <!--//Shoping cart-->
      <link rel="stylesheet" type="text/css" href="css/checkout.css">
      <!--stylesheets-->
      <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
   </head>
   <body>
   
   <%
   Seller s = null;
   if(session.getAttribute("data") != null)
   {
	   s = (Seller)session.getAttribute("data");
   }
   else
   {
	   response.sendRedirect("seller_login.jsp");
   }
   %>
      <!--headder-->
      <div class="header-outs" id="home">
      <div class="header-bar">
         <div class="container-fluid">
            <div class="hedder-up row">
               <div class="col-lg-3 col-md-3 logo-head">
                  <h1><a class="navbar-brand" href="index.html">E-Shop</a></h1>
               </div>
               
               
            </div>
         </div>
         <nav class="navbar navbar-expand-lg navbar-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
               <ul class="navbar-nav ">
                     <li class="nav-item active">
                        <a class="nav-link" href="seller-home.jsp">Home <span class="sr-only">(current)</span></a>
                     </li>
                     <!-- <li class="nav-item">
                        <a href="about.html" class="nav-link">About</a>
                     </li>  -->
                    
                     <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Product
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                           <a class="nav-link" href="seller-upload-product.jsp">Upload Product</a>
                           <a class="nav-link " href="seller-manage-product.jsp">Manage Product</a>
                        </div>
                     </li>
                     <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <%=s.getName() %>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                           <a class="nav-link" href="seller-profile.jsp">Profile</a>
                           <a class="nav-link " href="seller-change-password.jsp">Change Password</a>
                           <a class="nav-link " href="seller-logout.jsp">Logout</a>
                        </div>
                     </li>
                  </ul>            
               </div>
         </nav>
      </div>
	  </div>
      <!--//headder-->
      <!-- banner -->
