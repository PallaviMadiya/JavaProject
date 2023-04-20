<%@page import="Dao.CartDao"%>
<%@page import="Model.Cart"%>
<%@page import="Dao.WishListDao"%>
<%@page import="Model.WishList"%>
<%@page import="Dao.ProductDao"%>
<%@page import="Model.Product"%>
<%@page import="java.util.List"%>
<%@page import="Model.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@include file="customer-header.jsp" %>
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
									<li><%=c1.getPname() %> <i>:</i> <span>Rs.<%=c1.getTotal() %> </span></li>
								</ul>
							<%} %>
							<h5>Total : Rs.<%out.print(net_price); %></h5>
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
										<button class="submit" value="check_out" name="action">Checkout</button>
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
<%@include file="footer.jsp" %>

</body>
</html>