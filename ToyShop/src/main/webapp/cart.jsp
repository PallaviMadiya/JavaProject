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
					<h3>Cart Product</h3>
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
							<%
							int net_price = 0;
							%>
							<tbody>

								<%
								List<Cart> list = CartDao.getCartByCusId(c.getCid());
								%>
								<%
								for (Cart c1 : list) {
									net_price = net_price + c1.getTotal();
								%>
								<%
								Product p = ProductDao.getProductByPid(c1.getPid());
								%>
								<tr class="rem1">
									<td class="invert-image"><a href="single.html"><img
											src="img/<%=p.getImage()%>" alt=" " height="100px"
											width="px100" class="img-responsive"></a></td>
									<td class="invert"><%=c1.getPname()%></td>
									<td class="invert"><%=c1.getPprice()%></td>
									<td class="invert">
										<form action="CartController" method="post">
											<input type="hidden" name="cid" value="<%=c1.getCid()%>">
											<input type="hidden" name="pprice" value="<%=c1.getPprice()%>"> 
											<input type="hidden" name="total" value="<%=c1.getTotal()%>"> 
											<input type="number" name="qty" value="<%=c1.getQty()%>" onchange="this.form.submit();">
										</form>
									</td>
									<td class="invert"><%=c1.getTotal()%></td>
									<td><a href="remove-from-cart.jsp?id=<%=c1.getCid()%>">Remove</a></td>
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
								<li><%=c1.getPname() %> <i>-</i> <span><%=c1.getTotal() %> </span></li>
								
							</ul>
							<%} %>
							<h5>Total : <%out.print(net_price); %></h5>
						</div>
						<div class="col-md-8 address_form">
							<% %>
							<form method="GET" action="payment.jsp?amount=<%=net_price %>&cid=<%=c.getCid() %>">
								<table style="border:none;">
									<tbody>
										<tr>
											<td>
												<label>Total Amount</label>
											</td>
											<td>
												<input title="TXN_AMOUNT" tabindex="10"	type="text" name="amount" value="<%=net_price%>">
											</td>
										</tr>
										<tr>
											<td>
												<input style="border:2px black solid;border-radius:5px; background:light-gray;height:40px; width:100px;margin-left:20px;" value="CheckOut" type="submit" onclick="">
											</td>
										</tr>
									</tbody>
								</table>
							</form>
						</div>
						<div class="clearfix"></div>
						<div class="clearfix"></div>
					</div>

				</div>
			</div>
			<!-- //top products -->
		</div>
	</section>

	<!-- //about -->
<%@include file="footer.jsp" %>

</body>
</html>