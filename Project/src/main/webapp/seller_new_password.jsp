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
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Set New Password</h3>
            <div class="contact-list-grid">
            <% String msg1 = (String)request.getAttribute("msg1");%>
            <%
            	if(msg1!=null){
            %>
            <h3><%=msg1 %></h3>
            <br/>
            <%} %>
            
            
               <form action="SellerControlller" method="post">
                  <div class=" agile-wls-contact-mid">
                     <div class="form-group contact-forms">
                     <%String email = (String)request.getAttribute("email"); %>
                     
                     	<input type="hidden" class="form-control" name="email" value="<%=email%>">
                     	<div class="form-group contact-forms">
                     	<input type="password" class="form-control" name="np" placeholder="Enter new password" >
                     	</div>
                     	<div class="form-group contact-forms">
                        <input type="password" class="form-control" name="cnp" placeholder="Confirm new password">
                        <div class="form-group contact-forms">
                     </div>
                    
                     
           
                     <button type="submit" class="btn btn-block sent-butnn" name="action" value="new password">Set password</button>
                  </div>
               </form>
               
            </div>
         </div>
         <!--//contact-map -->
      </section>
      
<%@include file="footer.jsp" %>