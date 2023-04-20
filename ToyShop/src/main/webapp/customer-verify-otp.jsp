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
                  <a href="index.html">Home</a>
                  <span>/ /</span>
               </li>
               <li>Verify OTP</li>
            </ul>
         </div>
      </div>
      <!-- //short-->
      <!--verify otp -->
      <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Verify OTP</h3>
            <div class="contact-list-grid">
            <% String msg = (String)request.getAttribute("msg");%>
            <%if(msg!=null){ %>
            	<h3><%out.print(msg); %></h3>
            <%} %>
               <form action="CustomerController" method="post">
                  <div class=" agile-wls-contact-mid">
                     <div class="form-group contact-forms">
                     	<%String email = (String)request.getAttribute("email"); %>
                     	<%int otp = (Integer)request.getAttribute("otp"); %>
                        <input type="hidden" name="email" value="<%=email%>">
                        <input type="hidden" name="otp1" value="<%=otp%>">
                        <input type="text" class="form-control" name="otp2" placeholder="Enter OTP">
                     </div>
                     <button type="submit" name="action" value="verify" class="btn btn-block sent-butnn">Verify OTP</button>
                  </div>
               </form>
            </div>
         </div>
         <!--//contact-map -->
      </section>
      <%@include file="footer.jsp" %>
   </body>
</html>