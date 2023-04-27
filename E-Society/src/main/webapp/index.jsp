
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Society-User Index</title>
</head>
<body>

<%@include file="header.jsp" %>
    <!-- main-slider -->
  <section class="w3l-main-slider" id="home">
    <div class="companies20-content">
      <div class="owl-one owl-carousel owl-theme">
        <div class="item">
          <li>
            <div class="slider-info banner-view bg bg2">
              <div class="banner-info">
                <div class="container">
                  <div class="banner-info-bg text-left">
                    <h5>E-Society</h5>
                    <p>Keeps You Up To Date About Society Events.</p>
                    <a href="#read" class="view">View Details <span class="fa fa-long-arrow-right ml-1"
                        aria-hidden="true"></span></a>
                  </div>
                </div>
              </div>
            </div>
          </li>
        </div>
        <div class="item">
          <li>
            <div class="slider-info  banner-view banner-top1 bg bg2">
              <div class="banner-info">
                <div class="container">
                  <div class="banner-info-bg text-left">
                    <h5>E-Society</h5>
                    <p>Manages Your Society Related Work.</p>
                    <a href="#read" class="view">View Details <span class="fa fa-long-arrow-right ml-1"
                        aria-hidden="true"></span></a>
                  </div>
                </div>
              </div>
            </div>
          </li>
        </div>
        <div class="item">
          <li>
            <div class="slider-info banner-view banner-top2 bg bg2">
              <div class="banner-info">
                <div class="container">
                  <div class="banner-info-bg text-left">
                     <h5>E-Society</h5>
                    <p>Manages Your Society Related Work.</p>
                    <a href="#read" class="view">View Details <span class="fa fa-long-arrow-right ml-1"
                        aria-hidden="true"></span></a>
                  </div>
                </div>
              </div>
            </div>
          </li>
        </div>
        <div class="item">
          <li>
            <div class="slider-info banner-view banner-top3 bg bg2">
              <div class="banner-info">
                <div class="container">
                  <div class="banner-info-bg text-left">
                    <h5>E-Society</h5>
                    <p>Keeps You Up To Date About Society Events.</p>
                    <a href="#read" class="view">View Details <span class="fa fa-long-arrow-right ml-1"
                        aria-hidden="true"></span></a>
                  </div>
                </div>
              </div>
            </div>
          </li>
        </div>
      </div>
    </div>
  </section>
  <!-- /main-slider -->
  
  <section class="w3l-how-grids-3 py-5" id="how">
    <div class="container py-md-5">
      <div class="w3l-header mb-md-5 mb-4">
        <h6 class="sub-title">E-Society</h6>
        <h3 class="hny-title">How can it be helpful</h3>
        <p class="">Let us make this initiative better together</p>
      </div>
      <div class="row bottom-ab-grids align-items-center">
        <div class="col-lg-4 bottom-ab-left">
          <div class="grdhny-info">
            <img src="assets/images/one.JPG" class="img-curve img-fluid" alt="" width="330px" height="330px"/>
            <h4><a href="#" class="hnys-title">1. Make our society clean</a></h4>
            <p class="mt-2">As society members it is our responsibility to make it clean and not make it dirty.
            So everybody needs to join their hands for it.</p>
          </div>
        </div>
        <div class="col-lg-4 bottom-ab-right my-lg-0 my-5">
          <div class="grdhny-info">
            <img src="assets/images/online.jpeg" class="img-curve img-fluid" alt="" width="340px"/>
            <h4><a href="#" class="hnys-title">2.Make everything easy</a></h4>
            <p class="mt-2">By this initiative it can be very helpful to us to do our basic society related work at home and it makes our life easy.</p>
          </div>
        </div>
        <div class="col-lg-4 bottom-ab-right">
          <div class="grdhny-info">
            <img src="assets/images/on2.jpeg" class="img-curve img-fluid" alt="" width="310px"/>
            <h4><a href="#" class="hnys-title">3. Do everything online</a></h4>
            <p class="mt-2">You can make everything online like your maintenance payment, make complaint and book function hall.</p>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  <!--/services-->
  <section class="w3l-services1">
    <div id="content-with-photo4-block" class="py-5">
      <div class="container py-md-5">
        <div class="cwp4-two row">
          <div class="cwp4-image col-lg-6 pr-lg-5 mb-lg-0 mb-5">
          
            <img src="assets/images/poster.jpeg" class="img-fluid" alt=""  height="950px" width="500px"/>
          </div>
          <div class="cwp4-text col-lg-6">
            <h6 class="sub-title">what We Do</h6>
            <h3 class="hny-title">What We Offer for You</h3>
            <p>We'll help you to manage your society related work. We'll reach out with possible solutions.
            </p>

            <ul class="cont-4">
              <li><span class="fa fa-check"></span>Online Maintenance Payment</li>
              <li><span class="fa fa-check"></span>Register Complaint</li>
              <li><span class="fa fa-check"></span>Functions Hall Booking</li>
              <li><span class="fa fa-check"></span>Society Updates</li>
              

            </ul>
          </div>

        </div>
      </div>
    </div>
  </section>
  <!--//services-->
  
 <!-- script for banner slider-->
  <script>
    $(document).ready(function () {
      $('.owl-one').owlCarousel({
        loop: true,
        margin: 0,
        nav: false,
        responsiveClass: true,
        autoplay: true,
        autoplayTimeout: 5000,
        autoplaySpeed: 1000,
        autoplayHoverPause: false,
        responsive: {
          0: {
            items: 1,
            nav: false
          },
          480: {
            items: 1,
            nav: false
          },
          667: {
            items: 1,
            nav: true
          },
          1000: {
            items: 1,
            nav: true
          }
        }
      })
    })
  </script>
  <!-- //script -->
  <!-- script for tesimonials carousel slider -->
  <script>


    $(document).ready(function () {
      $("#owl-demo1").owlCarousel({
        loop: true,
        margin: 20,
        nav: false,
        responsiveClass: true,
        responsive: {
          0: {
            items: 1,
            nav: false
          },
          736: {
            items: 1,
            nav: false
          },
          1000: {
            items:1,
            nav: false,
            loop:true
          }
        }
      })
    })
  </script>
  <!-- //script for tesimonials carousel slider -->
  <!-- stats number counter-->
  <script src="assets/js/jquery.waypoints.min.js"></script>
  <script src="assets/js/jquery.countup.js"></script>
  <script>
    $('.counter').countUp();
  </script>  
 
<%@include file="footer.jsp" %>
</body>
</html>