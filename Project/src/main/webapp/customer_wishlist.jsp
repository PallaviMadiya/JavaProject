<%@page import="dao.ProductDao"%>
<%@page import="model.ProductModel"%>
<%@page import="dao.WishlistDao"%>
<%@page import="model.WishlistModel"%>
<%@page import="java.util.List"%>
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
                     <h3>Your<span> Wishlist</span></h3>
                     <br>
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
                           		List<WishlistModel> list = WishlistDao.getWishlistByCusId(c.getId()); 
                           %>
                           <%
                           		for(WishlistModel w : list){ 
                           %>
                           <%
                           		ProductModel p = ProductDao.getProductByPid(w.getPid());
                           %>
                              <tr class="rem1">
                                 
                                 <td class="invert-image"><a href="#"><img src="image/<%=p.getImage() %>" alt=" " height="200px" width="300px" class="img-responsive"></a></td>
                                 <td class="invert"><%=p.getPname() %></td>
                                 <td class="invert"><%=p.getPprice() %></td>
                                 
                                 <td class="invert">
                                 	<a href="remove_from_wishlist.jsp?id=<%=w.getWid()%>">Remove</a>
                                 </td>
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

<%@include file="footer.jsp" %>
