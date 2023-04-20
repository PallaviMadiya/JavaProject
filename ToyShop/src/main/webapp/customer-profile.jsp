<%@page import="Model.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@include file="customer-header.jsp" %>
<br><br><br><br><br><br><br><br>
         <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Customer Profile</h3>
            <div class="contact-list-grid">
               <form action="CustomerController" method="post">
                  <div class=" agile-wls-contact-mid">
                  <div class="form-group contact-forms">
                        <input type="hidden" class="form-control" name="cid" value="<%=c.getCid() %>">
                     </div>
                     <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="name" value="<%=c.getName() %>">
                     </div>
                      <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="contact" value="<%=c.getContact() %>">
                     </div>
                      <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="address" value="<%=c.getAddress() %>">
                     </div>
                     <div class="form-group contact-forms">
                        <input type="email" class="form-control" name="email" value="<%=c.getEmail() %>">
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