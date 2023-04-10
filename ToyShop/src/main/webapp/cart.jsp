<%@page import="Dao.CartDao"%>
<%@page import="Model.Cart"%>
<%@page import="Dao.WishListDao"%>
<%@page import="Model.WishList"%>
<%@page import="Dao.ProductDao"%>
<%@page import="Model.Product"%>
<%@page import="java.util.List"%>
<%@page import="Model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--A Design by W3layouts
   Author: W3layout
   Author URL: http://w3layouts.com
   License: Creative Commons Attribution 3.0 Unported
   License URL: http://creativecommons.org/licenses/by/3.0/
   -->
<!DOCTYPE html>
<html lang="zxx">
<head>
<title>Toys Shop an Ecommerce Category Bootstrap Responsive Web
	Template | Home :: w3layouts</title>
<!--meta tags -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="Toys Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
         Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);
	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<!--//meta tags ends here-->
<!--booststrap-->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"
	media="all">
<!--//booststrap end-->
<!-- font-awesome icons -->
<link href="css/fontawesome-all.min.css" rel="stylesheet"
	type="text/css" media="all">
<!-- //font-awesome icons -->
<!-- For Clients slider -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="all" />
<!--flexs slider-->
<link href="css/JiSlider.css" rel="stylesheet">
<!--Shoping cart-->
<link rel="stylesheet" href="css/shop.css" type="text/css" />
<!--//Shoping cart-->
 <link rel="stylesheet" type="text/css" href="css/checkout.css">
<!--stylesheets-->
<link href="css/style.css" rel='stylesheet' type='text/css' media="all">
<!--//stylesheets-->
<link href="//fonts.googleapis.com/css?family=Sunflower:500,700"
	rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700"
	rel="stylesheet">
</head>
<body>
	<%
	Customer c = null;
	if (session.getAttribute("custData") != null) {
		c = (Customer) session.getAttribute("custData");
	} else {
		response.sendRedirect("customer-login.jsp");
	}
	%>
	<% List<WishList> list2 = WishListDao.getWishLIstByCusId(c.getCid()); %>
	<% int wishListSize = list2.size(); %>
	<% List<Cart> list3 = CartDao.getCartByCusId(c.getCid()); %>
	<% int cartSize = list3.size(); %>
	<div class="header-outs" id="home">
		<div class="header-bar">
			<div class="info-top-grid">
				<div class="info-contact-agile">
					<ul>
						<li><span class="fas fa-phone-volume"></span>
							<p>+(000)123 4565 32</p></li>
						<li><span class="fas fa-envelope"></span>
							<p>
								<a href="mailto:info@example.com">info@example1.com</a>
							</p></li>
						<li></li>
					</ul>
				</div>
			</div>
			<div class="container-fluid">
				<div class="hedder-up row">
					<div class="col-lg-3 col-md-3 logo-head">
						<h1>
							<a class="navbar-brand" href="index.html">Toys-Shop</a>
						</h1>
					</div>
					<div class="col-lg-5 col-md-6 search-right">
						<form class="form-inline my-lg-0">
							<input class="form-control mr-sm-2" type="search"
								placeholder="Search">
							<button class="btn" type="submit">Search</button>
						</form>
					</div>
					<div class="col-lg-4 col-md-3 right-side-cart">
						<div class="cart-icons">
							<ul>
								<li><span class="far fa-heart"></span></li>
								<li>
									<button type="button" data-toggle="modal"
										data-target="#exampleModal">
										<span class="far fa-user"></span>
									</button>
								</li>
								<li class="toyscart toyscart2 cart cart box_1">
									<form action="#" method="post" class="last">
										<input type="hidden" name="cmd" value="_cart"> <input
											type="hidden" name="display" value="1">
										<button class="top_toys_cart" type="submit" name="submit"
											value="">
											<span class="fas fa-cart-arrow-down"></span>
										</button>
									</form>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<nav class="navbar navbar-expand-lg navbar-light">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-center"
					id="navbarSupportedContent">
					<ul class="navbar-nav ">
						<li class="nav-item active"><a class="nav-link"
							href="customer-home.jsp">Home <span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item"><a href="about.html" class="nav-link">About</a>
						</li>
						<li class="nav-item"><a href="service.html" class="nav-link">Service</a>
						</li>
						<li class="nav-item"><a href="shop.html" class="nav-link">Shop
								Now</a></li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> Product </a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="nav-link" href="wishlist.jsp">WishList[<span><%=wishListSize %>]</span></a> 
									<a class="nav-link " href="cart.jsp">Cart<span>[<%=cartSize %>]</span></a>
								</div>
						</li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown1"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <%=c.getName()%>
						</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="nav-link" href="seller-login.jsp">Profile</a> <a
									class="nav-link " href="customer-login.jsp">Change Password</a>
								<a class="nav-link " href="admin-login.jsp">Logout</a>
							</div></li>
					</ul>
				</div>
			</nav>
		</div>
		<!-- Slideshow 4 -->
	</div>
	<!-- //banner -->
	<!-- about -->
	<br>
	<br><br><br><br><br><br>
	<section class="checkout py-lg-4 py-md-3 py-sm-3 py-3">
		<div class="container py-lg-5 py-md-4 py-sm-4 py-3">
			<div class="shop_inner_inf">
				<div class="privacy about">
					<h3>Cart</h3>
					<%
						List<Cart> list = CartDao.getCartByCusId(c.getCid());
					%>
					<% if(list.isEmpty()){ %>
						<h2 style="color: gray";><center>No Item In Cart!!!</center></h2>
					<% } %><% else{ %>
					<div class="checkout-right">
						<table class="timetable_sub">
							<thead>
								<tr>
									<th>Product</th>
									<th>Product Name</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>Total</th>
									<th>Remove</th>
								</tr>
							</thead>
							<%int net_price = 0; %>
							<tbody>
								<% 
									for (Cart c1 : list) {
										net_price = net_price + c1.getTotal();
								%>
									
									<% Product p = ProductDao.getProductByPid(c1.getPid());	%>
									<tr class="rem1">
										<td class="invert-image"><a href="single.html"><img
												src="img/<%=p.getImage()%>" alt=" " height="100px"
												width="px100" class="img-responsive"></a></td>
										<td class="invert"><%=c1.getPname()%></td>
										<td class="invert"><%=c1.getPprice()%></td>
										<td class="invert">
										<form action="CartController" method="post">
											<input type="number" name="qty" value="<%=c1.getQty()%>">
										</form>
										</td>
										<td class="invert"><%=c1.getTotal()%></td>
										<td>
											<form action="CartController" method="post">
												<input type="hidden" name="cid" value="<%=c.getCid()%>">
												<input type="hidden" name="pid" value="<%=p.getPid()%>">
												<input type="submit" name="action" value="Remove From Cart">
											</form>
										</td>
									</tr>
									<%
									}
									%>
								</tbody>
							</table>
						</div>
						<div class="checkout-left">
							<div class="col-md-4 checkout-left-basket">
								<%for(Cart c1:list){ %>
								<ul>
									<li>Product1 <i>-</i> <span><%=c1.getTotal() %> </span></li>
								</ul>
							<%} %>
							<h5>Total : <%out.print(net_price); %></h5>
						</div>
						<div class="col-md-8 address_form">
							<h4>Add a new Details</h4>
							<form action="payment.html" method="post"
								class="creditly-card-form agileinfo_form">
								<section class="creditly-wrapper wrapper">
									<div class="information-wrapper">
										<div class="first-row form-group">
											<div class="controls">
												<label class="control-label">Full name: </label> <input
													class="billing-address-name form-control" type="text"
													name="name" value="<%=c.getName()%>">
											</div>
											<div class="card_number_grids">
												<div class="card_number_grid_left">
													<div class="controls">
														<label class="control-label">Mobile number:</label> <input
															class="form-control" type="text"
															value="<%=c.getContact()%>">
													</div>
												</div>
												<div class="card_number_grid_right">
													<div class="controls">
														<label class="control-label">Address: </label> <input
															class="form-control" type="text" value="<%=c.getAddress()%>">
													</div>
												</div>
												<div class="clear"></div>
											</div>
										</div>
										<button class="submit check_out">Checkout</button>
									</div>
								</section>
							</form>
						</div>
						<div class="clearfix"></div>
						<div class="clearfix"></div>
					</div>
					<% } %>
				</div>
			</div>
			<!-- //top products -->
		</div>
	</section>





	<!-- //about -->
	
	<!-- footer -->
	<footer class="py-lg-4 py-md-3 py-sm-3 py-3 text-center">
		<div class="copy-agile-right">
			<p>
				© 2018 Toys-Shop. All Rights Reserved | Design by <a
					href="http://www.W3Layouts.com" target="_blank">W3Layouts</a>
			</p>
		</div>
	</footer>
	<!-- //footer -->
	<!-- Modal 1-->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Login</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="register-form">
						<form action="#" method="post">
							<div class="fields-grid">
								<div class="styled-input">
									<input type="text" placeholder="Your Name" name="Your Name"
										required="">
								</div>
								<div class="styled-input">
									<input type="email" placeholder="Your Email" name="Your Email"
										required="">
								</div>
								<div class="styled-input">
									<input type="password" placeholder="password" name="password"
										required="">
								</div>
								<button type="submit" class="btn subscrib-btnn">Login</button>
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- //Modal 1-->
	<!--js working-->
	<script src='js/jquery-2.2.3.min.js'></script>
	<!--//js working-->
	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
		toys.render();
		toys.cart.on('toys_checkout', function(evt) {
			var items, len, i;
			if (this.subtotal() > 0) {
				items = this.items();
				for (i = 0, len = items.length; i < len; i++) {
				}
			}
		});
	</script>
	<!-- //cart-js -->
	<!--responsiveslides banner-->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function() {
			// Slideshow 4
			$("#slider4").responsiveSlides({
				auto : true,
				pager : false,
				nav : true,
				speed : 900,
				namespace : "callbacks",
				before : function() {
					$('.events').append("<li>before event fired.</li>");
				},
				after : function() {
					$('.events').append("<li>after event fired.</li>");
				}
			});
		});
	</script>
	<!--// responsiveslides banner-->
	<!--slider flexisel -->
	<script src="js/jquery.flexisel.js"></script>
	<script>
		$(window).load(function() {
			$("#flexiselDemo1").flexisel({
				visibleItems : 3,
				animationSpeed : 3000,
				autoPlay : true,
				autoPlaySpeed : 2000,
				pauseOnHover : true,
				enableResponsiveBreakpoints : true,
				responsiveBreakpoints : {
					portrait : {
						changePoint : 480,
						visibleItems : 1
					},
					landscape : {
						changePoint : 640,
						visibleItems : 2
					},
					tablet : {
						changePoint : 768,
						visibleItems : 2
					}
				}
			});
		});
	</script>
	<!-- //slider flexisel -->
	<!-- start-smoth-scrolling -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script>
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 900);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->
	<!-- here stars scrolling icon -->
	<script>
		$(document).ready(function() {
			var defaults = {
				containerID : 'toTop', // fading element id
				containerHoverID : 'toTopHover', // fading element hover id
				scrollSpeed : 1200,
				easingType : 'linear'
			};
			$().UItoTop({
				easingType : 'easeOutQuart'
			});
		});
	</script>
	<!-- //here ends scrolling icon -->
	<!--bootstrap working-->
	<script src="js/bootstrap.min.js"></script>
	<!-- //bootstrap working-->
</body>
</html>