<%@page import="dao.ProductDao"%>
<%@page import="model.ProductModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="customer_header.jsp" %>

<div class="inner_page-banner one-img">
         </div>
         <!-- short -->
         <div class="using-border py-3">
            <div class="inner_breadcrumb  ml-4">
               <ul class="short_ls">
                  
               </ul>
            </div>
         </div>
         <!-- //short-->
         <!--Checkout-->  
         <!-- //banner -->
         <!-- top Products -->
         <section class="checkout py-lg-4 py-md-3 py-sm-3 py-3">
            <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
               <div class="shop_inner_inf">
                  <div class="privacy about">
                     <h3>Your<span> Cart</span></h3>
                     <br>
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
                           <tbody>
                           <%
                           		List<CartModel> list = CartDao.getCartByCusId(c.getId()); 
                           %>
                           <%
                           		for(CartModel c1 : list){ 
                           %>
                           <%
                           		ProductModel p = ProductDao.getProductByPid(c1.getPid());
                           %>
                              <tr class="rem1">
                                 
                                 <td class="invert-image"><a href="#"><img src="image/<%=p.getImage() %>" alt=" " height="200px" width="300px" class="img-responsive"></a></td>
                                 <td class="invert"><%=c1.getPname() %></td>
                                 <td class="invert"><%=c1.getPprice() %></td>
                                 
                                 <td class="invert">
                                 	<form action="CartController" method="post">
                                 		<input type="number" name="qty" value="<%=c1.getQty()%>">
                                 	</form>
                                 </td>
                                 <td class="invert"><%=c1.getTotal() %></td>
                                 <td><a href="remove_from_cart.jsp?id=<%=c1.getCid()%>">Remove</a></td>
                              </tr>
                              
                              
                              <%} %>
                           </tbody>
                        </table>
                     </div>
                     
                  </div>
               </div>
               <!-- //top products -->
            </div>
      </section>


<%@include file="footer.jsp"%>