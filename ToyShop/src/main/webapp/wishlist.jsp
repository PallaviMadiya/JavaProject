<%@page import="Dao.WishListDao"%>
<%@page import="Model.WishList"%>
<%@page import="Dao.ProductDao"%>
<%@page import="Model.Product"%>
<%@page import="java.util.List"%>
<%@page import="Model.Customer"%>
<%@page import="Dao.CartDao" %>
<%@page import="Model.Cart" %>

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
					<h3>WishList Product</h3><br><br><br>
					<%
						List<WishList> list = WishListDao.getWishLIstByCusId(c.getCid());
					%>
					<% if(list.isEmpty()){ %>
						<h2 style="color: gray";><center>No Item In WishList!!!</center></h2>
					<% } %><% else{ %>
					<div class="checkout-right">
						<table class="timetable_sub">
							<thead>
								<tr>
									<th>Product</th>
									<th>Product Name</th>
									<th>Price</th>
									<th>Remove</th>
								</tr>
							</thead>
							<tbody>

								<%
									for (WishList w : list) {
								%>
									<%
										Product p = ProductDao.getProductByPid(w.getPid());
									%>
									<tr class="rem1">
										<td class="invert-image">
											<a href="single.html">
												<img src="img/<%=p.getImage()%>" alt=" " height="100px" width="px100" class="img-responsive">
											</a>
										</td>
										<td class="invert"><%=p.getPname()%></td>
										<td class="invert"><%=p.getPprice()%></td>
										<td>
											<form action="WishListController" method="post">
												<input type="hidden" name="cid" value="<%=c.getCid()%>">
												<input type="hidden" name="pid" value="<%=p.getPid()%>">
												<input type="submit" name="action" value="Remove From WishList">
											</form>
										</td>
									</tr>
								<%
								}
								%>
							</tbody>
						</table>
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