<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>

      <div class="inner_page-banner one-img">
      </div>
      <!--//banner -->
      <!-- short -->
      <div class="using-border py-3">
         <div class="inner_breadcrumb  ml-4">
            <ul class="short_ls">
               
            </ul>
         </div>
      </div>
      <!-- //short-->
      <!--contact -->
      <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Customer Forgot Password</h3>
            <div class="contact-list-grid">
            
            <% String msg1 = (String)request.getAttribute("msg1");%>
            <%
            	if(msg1!=null){
            %>
            <h3><%=msg1 %></h3>
            <br/>
            <%} %>
               <form action="CustomerController" method="post">
                  <div class=" agile-wls-contact-mid">
               
                     <div class="form-group contact-forms">
                        <input type="email" class="form-control" name="email" placeholder="Enter Email">
                     </div>
                    
                     
           
                     <button type="submit" class="btn btn-block sent-butnn" name="action" value="get otp">Get OTP</button>
                  </div>
               </form>
               
            </div>
         </div>
         <!--//contact-map -->
      </section>
      
<%@include file="footer.jsp" %>