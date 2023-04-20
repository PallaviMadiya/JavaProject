<%@page import="Dao.ProductDao"%>
<%@page import="Model.Product"%>
<%@page import="Model.Customer"%>
<%@page import="Dao.WishListDao"%>
<%@page import="Dao.CartDao" %>
<%@page import="Model.WishList"%>
<%@page import="Model.Cart" %>
<%@page import="java.util.List"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@include file="customer-header.jsp" %>
	<!-- banner -->
	<div class="inner_page-banner one-img"></div>
	<!--//banner -->
	<!-- short -->
	<div class="using-border py-3">
		<div class="inner_breadcrumb  ml-4">
			<ul class="short_ls">
				<li><a href="customer-home.jsp">Home</a> <span>/ /</span></li>
				<li>Product Page</li>
			</ul>
		</div>
	</div>
	<!-- //short-->
	<!--//banner -->
	<!--/shop-->
	<section class="banner-bottom py-lg-5 py-3">
		<div class="container">
			<div class="inner-sec-shop pt-lg-4 pt-3">
				<div class="row">
					<%
						int id = Integer.parseInt(request.getParameter("id"));
					%>
					<%
						Product p = ProductDao.getProductByPid(id);
					%>
					<div class="col-lg-4 single-right-left ">
						<div class="grid images_3_of_2">
							<div class="flexslider1">
								<ul class="slides">
									<li data-thumb="img/<%=p.getImage()%>">
										<div class="thumb-image">
											<img src="img/<%=p.getImage()%>" data-imagezoom="true"
												class="img-fluid" alt=" ">
										</div>
									</li>
								</ul>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="col-lg-8 single-right-left simpleCart_shelfItem">
						<h3><%=p.getPname()%></h3>
						<p>
							<span class="item_price"><%=p.getPprice()%></span>
						</p>

						<div class="description">
							<h5><%=p.getPdesc()%></h5>
							<%boolean flag = WishListDao.checkProductInWishList(p.getPid()); %>
							<%System.out.println(flag); %>
							<%if(flag == false){ %>
								<form action="WishListController" method="post">
									<input type="hidden" name="cid" value="<%=c.getCid()%>">
									<input type="hidden" name="pid" value="<%=p.getPid()%>">
									<input type="submit" name="action" value="Add To WishList">
								</form>
							<%}%><% else { %>
									<form action="WishListController" method="post">
										<input type="hidden" name="cid" value="<%=c.getCid()%>">
										<input type="hidden" name="pid" value="<%=p.getPid()%>">
										<input type="submit" name="action" value="Remove From WishList">
									</form>
								<% } %>
							
							<% boolean flag2 = CartDao.checkProductInCart(p.getPid()); %>
							<% if(flag2 == false){ %>
								<form action="CartController" method="post">
									<input type="hidden" name="cid" value="<%=c.getCid()%>">
									<input type="hidden" name="pid" value="<%=p.getPid()%>">
									<input type="hidden" name="pname" value="<%=p.getPname()%>">
									<input type="hidden" name="pcategory" value="<%=p.getPcategory()%>">
									<input type="hidden" name="pprice" value="<%=p.getPprice()%>">
									<input type="submit" name="action" value="Add To Cart">
								</form>
							<% } %><% else { %>
								<form action="CartController" method="post">
									<input type="hidden" name="cid" value="<%=c.getCid()%>">
									<input type="hidden" name="pid" value="<%=p.getPid()%>">
									<input type="submit" name="action" value="Remove From Cart">
								</form>
							<% } %>
							
							
						</div>

					</div>
					<div class="clearfix"></div>
					<!--/tabs-->
					<div class="responsive_tabs">
						<div id="horizontalTab">
							<ul class="resp-tabs-list">
								<li>Description</li>
								<li>Reviews</li>
								<li>Information</li>
							</ul>
							<div class="resp-tabs-container">
								<!--/tab_one-->
								<div class="tab1">
									<div class="single_page">
										<h6>Lorem ipsum dolor sit amet</h6>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elPellentesque vehicula augue eget nisl ullamcorper, molestie
											blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur
											adipisicing elit, sed do eiusmod tempor incididunt ut lab ore
											et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation ullamco. labore et dolore magna aliqua.</p>
										<p class="para">Lorem ipsum dolor sit amet, consectetur
											adipisicing elPellentesque vehicula augue eget nisl
											ullamcorper, molestie blandit ipsum auctor. Mauris volutpat
											augue dolor.Consectetur adipisicing elit, sed do eiusmod
											tempor incididunt ut lab ore et dolore magna aliqua. Ut enim
											ad minim veniam, quis nostrud exercitation ullamco. labore et
											dolore magna aliqua.</p>
									</div>
								</div>
								<!--//tab_one-->
								<div class="tab2">
									<div class="single_page">
										<div class="bootstrap-tab-text-grids">
											<div class="bootstrap-tab-text-grid">
												<div class="bootstrap-tab-text-grid-left">
													<img src="images/team1.jpg" alt=" " class="img-fluid">
												</div>
												<div class="bootstrap-tab-text-grid-right">
													<ul>
														<li><a href="#">Admin</a></li>
														<li><a href="#"><i class="fa fa-reply-all"
																aria-hidden="true"></i> Reply</a></li>
													</ul>
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elPellentesque vehicula augue eget.Ut enim ad minima
														veniam, quis nostrum exercitationem ullam corporis
														suscipit laboriosam, nisi ut aliquid ex ea commodi
														consequatur? Quis autem vel eum iure reprehenderit.</p>
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="add-review">
												<h4>add a review</h4>
												<form action="#" method="post">
													<div class="row">
														<div class="col-md-6">
															<input type="text" name="Name" required="">
														</div>
														<div class="col-md-6">
															<input type="email" name="Email" required="">
														</div>
													</div>
													<textarea name="Message" required=""></textarea>
													<input type="submit" value="SEND">
												</form>
											</div>
										</div>
									</div>
								</div>
								<div class="tab3">
									<div class="single_page">
										<h6>Teddy Bear(Blue)</h6>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elPellentesque vehicula augue eget nisl ullamcorper, molestie
											blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur
											adipisicing elit, sed do eiusmod tempor incididunt ut lab ore
											et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation ullamco. labore et dolore magna aliqua.</p>
										<p class="para">Lorem ipsum dolor sit amet, consectetur
											adipisicing elPellentesque vehicula augue eget nisl
											ullamcorper, molestie blandit ipsum auctor. Mauris volutpat
											augue dolor.Consectetur adipisicing elit, sed do eiusmod
											tempor incididunt ut lab ore et dolore magna aliqua. Ut enim
											ad minim veniam, quis nostrud exercitation ullamco. labore et
											dolore magna aliqua.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--//tabs-->
				</div>
			</div>
		</div>
	</section>
	<%@include file="footer.jsp" %>
	
</body>
</html>