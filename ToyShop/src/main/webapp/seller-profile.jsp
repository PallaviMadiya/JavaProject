<%@page import="Model.Seller"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@include file="seller-header.jsp" %>

      
      
         <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Seller Register</h3>
            <div class="contact-list-grid">
            <br><br><br>
               <form action="SellerController" method="post">
                  <div class=" agile-wls-contact-mid">
                  <div class="form-group contact-forms">
                        <input type="hidden" class="form-control" name="id" value="<%=s.getId() %>">
                     </div>
                     <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="name" value="<%=s.getName() %>">
                     </div>
                      <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="contact" value="<%=s.getContact() %>">
                     </div>
                      <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="address" value="<%=s.getAddress() %>">
                     </div>
                     <div class="form-group contact-forms">
                        <input type="email" class="form-control" name="email" value="<%=s.getEmail() %>">
                     </div>
                     <button type="submit" name="action" value="update" class="btn btn-block sent-butnn">Update</button>
                  </div>
               </form>
            </div>
         </div>
         <!--//contact-map -->
      </section>
      
      
      
      <%@include file="footer.jsp" %>
      
   </body>
</html>