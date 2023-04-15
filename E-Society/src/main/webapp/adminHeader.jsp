<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- saved from url=(0125)https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html -->
<html lang="en" class=" js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers no-applicationcache svg inlinesvg smil svgclippaths">
head>
<title>Admin Panel</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Glance Design Dashboard Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!-- Bootstrap Core CSS -->
<link href="admin/assets/css/bootstrap.css" rel='stylesheet' type='text/css' />

<!-- Custom CSS -->
<link href="admin/assets/css/style.css" rel='stylesheet' type='text/css' />

<!-- font-awesome icons CSS -->
<link href="admin/assets/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons CSS-->

<!-- side nav css file -->
<link href='admin/assets/css/SidebarNav.min.css' media='all' rel='stylesheet' type='text/css'/>
<!-- //side nav css file -->
 
 <!-- js-->
<script src="admin/assets/js/jquery-1.11.1.min.js"></script>
<script src="admin/assets/js/modernizr.custom.js"></script>

<!--webfonts-->
<link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
<!--//webfonts--> 

<!-- chart -->
<script src="admin/assets/js/Chart.js"></script>
<!-- //chart -->

<!-- Metis Menu -->
<script src="admin/assets/js/metisMenu.min.js"></script>
<script src="admin/assets/js/custom.js"></script>
<link href="admin/assets/css/custom.css" rel="stylesheet">
<!--//Metis Menu -->
<style>
#chartdiv {
  width: 100%;
  height: 295px;
}
</style>
<!--pie-chart --><!-- index page sales reviews visitors pie chart -->
<script src="admin/assets/js/pie-chart.js" type="text/javascript"></script>
 <script type="text/javascript">

        $(document).ready(function () {
            $('#demo-pie-1').pieChart({
                barColor: '#2dde98',
                trackColor: '#eee',
                lineCap: 'round',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-2').pieChart({
                barColor: '#8e43e7',
                trackColor: '#eee',
                lineCap: 'butt',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-3').pieChart({
                barColor: '#ffc168',
                trackColor: '#eee',
                lineCap: 'square',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

           
        });

    </script>
<!-- //pie-chart --><!-- index page sales reviews visitors pie chart -->

	<!-- requried-jsfiles-for owl -->
					<link href="admin/assets/css/owl.carousel.css" rel="stylesheet">
					<script src="admin/assets/js/owl.carousel.js"></script>
						<script>
							$(document).ready(function() {
								$("#owl-demo").owlCarousel({
									items : 3,
									lazyLoad : true,
									autoPlay : true,
									pagination : true,
									nav:true,
								});
							});
						</script>
					<!-- //requried-jsfiles-for owl -->
</head> 
<body class="sidebar-menu-collapsed noscroll" style="">

<div class="pull-right toggle-right-sidebar">
<span class="fa title-open-right-sidebar tooltipstered fa-angle-double-right"></span>
</div>

<div id="right-sidebar" class="right-sidebar-notifcations nav-collapse">
<div class="bs-example bs-example-tabs right-sidebar-tab-notification" data-example-id="togglable-tabs">

    <div id="w3lDemoBar" class="w3l-demo-bar">
        <div class="demo-btns">
        <a href="https://w3layouts.com/?p=42007">
            <span class="w3l-icon -back">
                <span class="fa fa-arrow-left"></span>
            </span>
            <span class="w3l-text">Back</span>
        </a>
        <a href="https://w3layouts.com/?p=42007">
            <span class="w3l-icon -download">
                <span class="fa fa-download"></span>
            </span>
            <span class="w3l-text">Download</span>
        </a>
        <a href="https://w3layouts.com/checkout/?add-to-cart=42007" class="no-margin-bottom-mobile">
            <span class="w3l-icon -buy">
                <span class="fa fa-shopping-cart"></span>
            </span>
            <span class="w3l-text">Buy</span>
        </a>
    </div>
        <!---<div class="responsive-icons">
            <a href="#url" class="desktop-mode">
                <span class="w3l-icon -desktop">
                    <span class="fa fa-desktop"></span>
                </span>
            </a>
            <a href="#url" class="tablet-mode">
                <span class="w3l-icon -tablet">
                    <span class="fa fa-tablet"></span>
                </span>
            </a>
            <a href="#url" class="mobile-mode no-margin-bottom">
                <span class="w3l-icon -mobile">
                    <span class="fa fa-mobile"></span>
                </span>
            </a>
        </div>-->
    </div>
    <div class="right-sidebar-panel-content animated fadeInRight" tabindex="5003" style="overflow: hidden; outline: none;">
    </div>
</div>
</div>


  <div class="se-pre-con" style="display: none;"></div>
<section>
  <!-- sidebar menu start -->
  <div class="sidebar-menu sticky-sidebar-menu">

    <!-- logo start -->
    <div class="logo">
      <h1><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html">Collective</a></h1>
    </div>

  <!-- if logo is image enable this -->
    <!-- image logo --
    <div class="logo">
      <a href="index.html">
        <img src="image-path" alt="Your logo" title="Your logo" class="img-fluid" style="height:35px;" />
      </a>
    </div>
    <!-- //image logo -->

    <div class="logo-icon text-center">
      <a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html" title="logo"><img src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/logo.png" alt="logo-icon"> </a>
    </div>
    <!-- //logo end -->

    <div class="sidebar-menu-inner">

      <!-- sidebar nav start -->
      <ul class="nav nav-pills nav-stacked custom-nav">
        <li class="active"><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html"><i class="fa fa-tachometer"></i><span> Dashboard</span></a>
        </li>
        <li class="menu-list">
          <a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#"><i class="fa fa-cogs"></i>
            <span>Elements <i class="lnr lnr-chevron-right"></i></span></a>
          <ul class="sub-menu-list">
            <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/carousels.html">Carousels</a> </li>
            <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/cards.html">Default cards</a> </li>
            <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/people.html">People cards</a></li>
          </ul>
        </li>
        <li class="menu-list"><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#"><i class="fa fa-book"></i>
            <span>More pages <i class="lnr lnr-chevron-right"></i></span></a>
          <ul class="sub-menu-list">
            <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/timeline.html">Timeline</a></li>
            <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/error.html">404</a></li>
            <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/blank-page.html">Blank Page</a></li>
          </ul>
        </li>
        <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/charts.html"><i class="fa fa-pie-chart"></i> <span>Charts</span> <label class="label label-primary"> new</label></a></li>
        <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/pricing.html"><i class="fa fa-table"></i> <span>Pricing tables</span></a></li>
        <li class="menu-list"><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#"><i class="fa fa-envelope"></i>
            <span>Mailbox <i class="lnr lnr-chevron-right"></i></span></a>
          <ul class="sub-menu-list">
            <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/inbox.html">Inbox</a> </li>
            <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#compose-mail.html">Compose Mail</a></li>
          </ul>
        </li>
        <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/blocks.html"><i class="fa fa-th"></i> <span>Content blocks</span></a></li>
        <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/faq.html"><i class="fa fa-question-circle"></i> <span>Faq's</span></a></li>
        <li class="menu-list"><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#"><i class="fa fa-user"></i>
            <span>User <i class="lnr lnr-chevron-right"></i></span></a>
          <ul class="sub-menu-list">
            <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/login.html">Login</a> </li>
            <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/register.html">Sign Up</a></li>
            <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/forgot-password.html">Forgot Password</a></li>
          </ul>
        </li>
        <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/forms.html"><i class="fa fa-file-text"></i> <span>Forms</span></a></li>
      </ul>
      <!-- //sidebar nav end -->
      <!-- toggle button start -->
      <a class="toggle-btn">
        <i class="fa fa-angle-double-left menu-collapsed__left"><span>Collapse Sidebar</span></i>
        <i class="fa fa-angle-double-right menu-collapsed__right"></i>
      </a>
      <!-- //toggle button end -->
    </div>
  </div>
  <!-- //sidebar menu end -->
  <!-- header-starts -->
  <div class="header sticky-header">

    <!-- notification menu start -->
    <div class="menu-right">
      <div class="navbar user-panel-top">
        <div class="search-box">
          <form action="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#search-results.html" method="get">
            <input class="search-input" placeholder="Search Here..." type="search" id="search">
            <button class="search-submit" value=""><span class="fa fa-search"></span></button>
          </form>
        </div>
        <div class="user-dropdown-details d-flex">
          <div class="profile_details_left">
            <ul class="nofitications-dropdown">
              <li class="dropdown">
                <a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell-o"></i><span class="badge blue">3</span></a>
                <ul class="dropdown-menu">
                  <li>
                    <div class="notification_header">
                      <h3>You have 3 new notifications</h3>
                    </div>
                  </li>
                  <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#" class="grid">
                      <div class="user_img"><img src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/avatar1.jpg" alt=""></div>
                      <div class="notification_desc">
                        <p>Johnson purchased template</p>
                        <span>Just Now</span>
                      </div>
                    </a></li>
                  <li class="odd"><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#" class="grid">
                      <div class="user_img"><img src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/avatar2.jpg" alt=""></div>
                      <div class="notification_desc">
                        <p>New customer registered </p>
                        <span>1 hour ago</span>
                      </div>
                    </a></li>
                  <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#" class="grid">
                      <div class="user_img"><img src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/avatar3.jpg" alt=""></div>
                      <div class="notification_desc">
                        <p>Lorem ipsum dolor sit amet </p>
                        <span>2 hours ago</span>
                      </div>
                    </a></li>
                  <li>
                    <div class="notification_bottom">
                      <a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#all" class="bg-primary">See all notifications</a>
                    </div>
                  </li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-comment-o"></i><span class="badge blue">4</span></a>
                <ul class="dropdown-menu">
                  <li>
                    <div class="notification_header">
                      <h3>You have 4 new messages</h3>
                    </div>
                  </li>
                  <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#" class="grid">
                      <div class="user_img"><img src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/avatar1.jpg" alt=""></div>
                      <div class="notification_desc">
                        <p>Johnson purchased template</p>
                        <span>Just Now</span>
                      </div>
                    </a></li>
                  <li class="odd"><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#" class="grid">
                      <div class="user_img"><img src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/avatar2.jpg" alt=""></div>
                      <div class="notification_desc">
                        <p>New customer registered </p>
                        <span>1 hour ago</span>
                      </div>
                    </a></li>
                  <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#" class="grid">
                      <div class="user_img"><img src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/avatar3.jpg" alt=""></div>
                      <div class="notification_desc">
                        <p>Lorem ipsum dolor sit amet </p>
                        <span>2 hours ago</span>
                      </div>
                    </a></li>
                  <li><a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#" class="grid">
                      <div class="user_img"><img src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/avatar1.jpg" alt=""></div>
                      <div class="notification_desc">
                        <p>Johnson purchased template</p>
                        <span>Just Now</span>
                      </div>
                    </a></li>
                  <li>
                    <div class="notification_bottom">
                      <a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#all" class="bg-primary">See all messages</a>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="profile_details">
            <ul>
              <li class="dropdown profile_details_drop">
                <a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#" class="dropdown-toggle" data-toggle="dropdown" id="dropdownMenu3" aria-haspopup="true" aria-expanded="false">
                  <div class="profile_img">
                    <img src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/profileimg.jpg" class="rounded-circle" alt="">
                    <div class="user-active">
                      <span></span>
                    </div>
                  </div>
                </a>
                <ul class="dropdown-menu drp-mnu" aria-labelledby="dropdownMenu3">
                  <li class="user-info">
                    <h5 class="user-name">John Deo</h5>
                    <span class="status ml-2">Available</span>
                  </li>
                  <li> <a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#"><i class="lnr lnr-user"></i>My Profile</a> </li>
                  <li> <a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#"><i class="lnr lnr-users"></i>1k Followers</a> </li>
                  <li> <a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#"><i class="lnr lnr-cog"></i>Setting</a> </li>
                  <li> <a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#"><i class="lnr lnr-heart"></i>100 Likes</a> </li>
                  <li class="logout"> <a href="https://p.w3layouts.com/demos_new/template_demo/21-02-2020/collective-admin-panel-liberty-demo_Free/1892622516/web/index.html#sign-up.html"><i class="fa fa-power-off"></i> Logout</a> </li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!--notification menu end -->
  </div>
  <!-- //header-ends -->
  <script>
  // When the user scrolls down 20px from the top of the document, show the button
  window.onscroll = function () {
    scrollFunction()
  };

  function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
      document.getElementById("movetop").style.display = "block";
    } else {
      document.getElementById("movetop").style.display = "none";
    }
  }

  // When the user clicks on the button, scroll to the top of the document
  function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
  }
</script>
<!-- /move top -->


<script src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/jquery-3.3.1.min.js.download"></script>
<script src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/jquery-1.10.2.min.js.download"></script>

<!-- chart js -->
<script src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/Chart.min.js.download"></script>
<script src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/utils.js.download"></script>
<!-- //chart js -->

<!-- Different scripts of charts.  Ex.Barchart, Stackedchart, Linechart, Piechart -->
<script src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/bar.js.download"></script>
<script src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/stacked.js.download"></script>
<script src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/linechart.js.download"></script>
<script src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/pie.js.download"></script>
<!-- //Different scripts of charts.  Ex.Barchart, Stackedchart, Linechart, Piechart -->

<!-- data tables js -->
<script>
  $(document).ready(function () {
    $('#example').DataTable();
  });
</script>
<!-- //data tables js -->

<script src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/jquery.dataTables.min.js.download"></script>


<script src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/faq.js.download"></script>

<script src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/jquery.nicescroll.js.download"></script>
<script src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/scripts.js.download"></script>

<!-- close script -->
<script>
  var closebtns = document.getElementsByClassName("close-grid");
  var i;

  for (i = 0; i < closebtns.length; i++) {
    closebtns[i].addEventListener("click", function () {
      this.parentElement.style.display = 'none';
    });
  }
</script>
<!-- //close script -->

<!-- disable body scroll when navbar is in active -->
<script>
  $(function () {
    $('.sidebar-menu-collapsed').click(function () {
      $('body').toggleClass('noscroll');
    })
  });
</script>
<!-- disable body scroll when navbar is in active -->

 <!-- loading-gif Js -->
 <script src="./Collective Admin Panel a Flat Bootstrap Responsive Website Template _ Home __ W3Layouts_files/modernizr.js.download"></script>
 <script>
     $(window).load(function () {
         // Animate loader off screen
         $(".se-pre-con").fadeOut("slow");;
     });
 </script>
 <!--// loading-gif Js -->