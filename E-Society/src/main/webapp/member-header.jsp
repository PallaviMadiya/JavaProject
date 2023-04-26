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

<%
	Member m = null;
	if(session.getAttribute("memberData") != null)
	{
		m = (Member)session.getAttribute("memberData");	
	}
	else
	{
		response.sendRedirect("member-login.jsp");
	}
%>
		
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
		              <a class="nav-link" href="member-home.jsp">Home <span class="sr-only">(current)</span></a>
		            </li>
		            
		                     
		             <li class="nav-item">
		             	<div class="dropdown">
		             		<a class="nav-link" class="dropbtn">Complaint <i class="fa fa-angle-down lnr"></i> <span class="sr-only">(current)</span></a>
		              		<div class="dropdown-content" >
		              				
		                		<a class="nav-link" href="member-register-complaint.jsp">Register Complaint</a>
		                		<a class="nav-link" href="#">View All Complaint</a>
		              		</div>
		            	</div>
		            </li> 
		            
		            
		            <li class="nav-item">
		             	<div class="dropdown">
		             		<a class="nav-link" class="dropbtn">Service <i class="fa fa-angle-down lnr"></i> <span class="sr-only">(current)</span></a>
		              		<div class="dropdown-content" >
		              				
		                		<a class="nav-link" href="#">Book Hall</a>
		                		<a class="nav-link" href="#">Society Meetings</a>
		                		<a class="nav-link" href="member-view-notice.jsp">Notice</a>
		              		</div>
		            	</div>
		            </li> 
		            
		            <li class="nav-item">
		             	<div class="dropdown">
		             		<a class="nav-link" class="dropbtn">Payment <i class="fa fa-angle-down lnr"></i> <span class="sr-only">(current)</span></a>
		              		<div class="dropdown-content" >
		              				
		                		<a class="nav-link" href="#">Maintenance</a>
		                		<a class="nav-link" href="#">Payment History</a>
		              		</div>
		            	</div>
		            </li> 		
		           
		            
		           			
		            <li class="nav-item">
		             	<div class="dropdown">
		             		<a class="nav-link" class="dropbtn">Event <i class="fa fa-angle-down lnr"></i> <span class="sr-only">(current)</span></a>
		              		<div class="dropdown-content" >
		              				
		                		<a class="nav-link" href="#">Society Events</a>
		                		<a class="nav-link" href="#">Gallery</a>
		              		</div>
		            	</div>
		            </li> 
		                       
		            <li class="nav-item">
		             	<div class="dropdown">
		             		<a class="nav-link" class="dropbtn"><%=m.getFname() %> <i class="fa fa-angle-down lnr"></i> <span class="sr-only">(current)</span></a>
		              		<div class="dropdown-content" >
		              				
		                		<a class="nav-link" href="member-profile.jsp">Profile</a>
		                		<a class="nav-link" href="member-change-password.jsp">Change Password</a>
		                		<a class="nav-link" href="member-logout.jsp">Logout</a>
		              		</div>
		            	</div>
		            </li> 
		              

		          </ul>
		        </div>
		        
			        
		       
		        
		      </nav>
		    </div>
		  </header>
		  
	



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