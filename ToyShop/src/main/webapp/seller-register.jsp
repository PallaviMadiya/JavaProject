<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@include file="header.jsp" %>

<head>
<meta charset="ISO-8859-1">
<head>
      <!-- banner -->
      <div class="inner_page-banner one-img">
      </div>
      <!--//banner -->
      <!-- short -->
      <div class="using-border py-3">
         <div class="inner_breadcrumb  ml-4">
            <ul class="short_ls">
               <li>
                  <a href="index.html">Home</a>
                  <span>/ /</span>
               </li>
               <li>Register</li>
            </ul>
         </div>
      </div>
      <!-- //short-->
      <!--contact -->
      <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Seller Register</h3>
            <div class="contact-list-grid">
            <% String msg = (String)request.getAttribute("msg"); %>
            <% if(msg!=null){
            %>
            	<h3><%=msg %></h3>
            <% } %>
            <% String msg1 = (String)request.getAttribute("msg1"); %>
            <% if(msg1!=null){
            %>
            	<h3><%=msg1 %></h3>
            <% } %>
               <form action="SellerController" method="post">
                  <div class=" agile-wls-contact-mid">
                     <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="name" placeholder="Name">
                     </div>
                      <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="contact" placeholder="Contact">
                     </div>
                      <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="address" placeholder="Address">
                     </div>
                     <div class="form-group contact-forms">
                        <input type="email" class="form-control" name="email" placeholder="Email">
                     </div>
                     <div class="form-group contact-forms">
                        <input type="password" class="form-control" name="password" placeholder="Password">
                     </div>
                     <button type="submit" name="action" value="register" class="btn btn-block sent-butnn">Register</button>
                  </div>
               </form>
            </div>
         </div>
         <!--//contact-map -->
      </section>
      
      <%@include file="footer.jsp" %>
      
   </body>
</html>