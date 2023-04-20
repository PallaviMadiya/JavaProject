<%@page import="Model.Seller" %>
<%@page import="Model.Product"%>
<%@page import="java.util.List"%>
<%@page import="Dao.ProductDao" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@include file="seller-header.jsp" %>
         <!-- banner -->
         <div class="inner_page-banner one-img">
         </div>
         <!-- short -->
         <div class="using-border py-3">
            <div class="inner_breadcrumb  ml-4">
               <ul class="short_ls">
                  <li>
                     <a href="seller-home.jsp">Home</a>
                     <span>/ /</span>
                  </li>
                  <li>Manage Product</li>
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
                     <h3>Manage Product</span></h3>
                     <div class="checkout-right">
                        <table class="timetable_sub">
                           <thead>
                              <tr>
                                 <th>Product</th>
                                 <th>Product Name</th>
                                 <th>Price</th>
                                 <th>Edit</th>
                                 <th>Remove</th>
                              </tr>
                           </thead>
                           <tbody>
                           
                           <%List<Product> list = ProductDao.getProductBySid(s.getId()); %>
                           <%for(Product p:list){ %>
                              <tr class="rem1">
                                 <td class="invert-image">
                                 	<a href="single.html">
                                 		<img src="img/<%=p.getImage() %>" alt="" class="img-responsive" width=100px height="100px">
                                 	</a>
                                 </td>
                                 <td class="invert"><%=p.getPname() %></td>
                                 <td class="invert"><%=p.getPprice() %></td>
                                 <td>
                                    <a href="seller-edit-product.jsp?id=<%=p.getPid()%>">Edit</a>
                                 </td>
                                 <td>
                                    <a href="seller-delete-product.jsp?id=<%=p.getPid()%>">Remove</a>
                                 </td>
                              </tr>
                             <% } %>
                           </tbody>
                        </table>
                     </div>
                     
                  </div>
               </div>
               <!-- //top products -->
            </div>
      </section>
     <%@include file="footer.jsp" %>
     
   </body>
</html>