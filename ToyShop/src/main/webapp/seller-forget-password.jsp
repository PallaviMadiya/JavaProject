<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@include file="header.jsp" %>

      <!-- banner -->
      <div class="inner_page-banner one-img">
      </div>
      <!--//banner -->
      <!-- short -->
      <div class="using-border py-3">
         <div class="inner_breadcrumb  ml-4">
            <ul class="short_ls">
               <li>
                  <a href="index.jsp">Home</a>
                  <span>/ /</span>
               </li>
               <li>Forget Password</li>
            </ul>
         </div>
      </div>
      <!-- //short-->
      <!--Forgot Password -->
      <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Forget Password</h3>
            <div class="contact-list-grid">
            <% String msg = (String)request.getAttribute("msg"); %>
            <% if(msg!=null){ %>
            	<h3><%=msg %></h3>
            <% } %>
               <form action="SellerController" method="post">
                  <div class=" agile-wls-contact-mid">
                     <div class="form-group contact-forms">
                        <input type="email" class="form-control" name="email" placeholder="Email">
                     </div>
                     <button type="submit" name="action" value="get otp" class="btn btn-block sent-butnn">Get OTP</button>
                  </div>
               </form>
            </div>
         </div>
         <!--//Forget Password -->
      </section>
      
      <%@include file="footer.jsp" %>
      
   </body>
</html>