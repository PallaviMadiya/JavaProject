<%@page import="model.Member"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Society-User Header</title>
 <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- google fonts -->
  <link href="//fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700&display=swap" rel="stylesheet">
  <!-- google fonts -->
  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style-starter.css">
  <!-- Template CSS -->
    <link rel="stylesheet" href="assets/css/style-liberty.css">
  
  <link rel="stylesheet" href="assets/css/dropdown.css">
</head>
<body>


		<!--header-->
		  <header id="site-header" class="fixed-top">
		    <div class="container">
		      <nav class="navbar navbar-expand-lg stroke">
		        <h1><a class="navbar-brand mr-lg-5" href="index.jsp">
		          <span class="log">E-</span>Society
		          </a></h1>
		        <!-- if logo is image enable this   
		      <a class="navbar-brand" href="#index.html">
		          <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
		      </a> -->
		        <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse"
		          data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
		          aria-label="Toggle navigation">
		          <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
		          <span class="navbar-toggler-icon fa icon-close fa-times"></span>
		          </span>
		        </button>

		        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
		          <ul class="navbar-nav mr-auto">
		            <li class="nav-item active">
		              <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
		            </li>
		            <li class="nav-item">
		              <a class="nav-link" href="about.jsp">About</a>
		            </li>
		                      
					<li class="nav-item">
		             	<div class="dropdown">
		             		<a class="nav-link" class="dropbtn">Sign In <i class="fa fa-angle-down lnr"></i><span class="sr-only">(current)</span></a>
		              		<div class="dropdown-content" >
		              				
		                		<a class="nav-link" href="member-login.jsp">Member Sign In</a>
		                		<a class="nav-link" href="admin-login.jsp">Admin Sign In</a>
		              		</div>
		            	</div>
		            </li> 

		            <li class="nav-item">
		              <a class="nav-link" href="contact.jsp">Contact</a>
		            </li>

		          </ul>
		        </div>
		        <div class="d-lg-block d-none">
		          <a href="member-signup.jsp" class="btn btn-style btn-secondary">Member Sign Up</a>
		        </div>
		        <!-- toggle switch for light and dark theme -->
		        <div class="mobile-position">
		          <nav class="navigation">
		            <div class="theme-switch-wrapper">
		              <label class="theme-switch" for="checkbox">
		                <input type="checkbox" id="checkbox">
			                <div class="mode-container">
			                  <i class="gg-sun"></i>
			                  <i class="gg-moon"></i>
			                </div>
		              </label>
		            </div>
		          </nav>
		        </div>
		        <!-- //toggle switch for light and dark theme -->
		      </nav>
		    </div>
		  </header>
		  <!-- //header -->
	



  <!-- //footer-29 block -->
  <!-- disable body scroll which navbar is in active -->
  <script>
    $(function () {
      $('.navbar-toggler').click(function () {
        $('body').toggleClass('noscroll');
      })
    });
  </script>
  <!-- disable body scroll which navbar is in active -->

  <!-- Template JavaScript -->
  <script src="assets/js/jquery-3.3.1.min.js"></script>
  <script src="assets/js/theme-change.js"></script>
  <script src="assets/js/owl.carousel.js"></script>
 
  <!--/MENU-JS-->
  <script>
    $(window).on("scroll", function () {
      var scroll = $(window).scrollTop();

      if (scroll >= 80) {
        $("#site-header").addClass("nav-fixed");
      } else {
        $("#site-header").removeClass("nav-fixed");
      }
    });

    //Main navigation Active Class Add Remove
    $(".navbar-toggler").on("click", function () {
      $("header").toggleClass("active");
    });
    $(document).on("ready", function () {
      if ($(window).width() > 991) {
        $("header").removeClass("active");
      }
      $(window).on("resize", function () {
        if ($(window).width() > 991) {
          $("header").removeClass("active");
        }
      });
    });
  </script>
  <!--//MENU-JS-->

  <script src="assets/js/bootstrap.min.js"></script>
</body>
</html>