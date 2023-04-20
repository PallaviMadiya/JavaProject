<%@page import="Model.Seller"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<%@include file="seller-header.jsp" %>
 
         <!--Seller Upload Product -->
        <br><br><br><br><br><br>
      <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Seller Upload Product</h3>
            <div class="contact-list-grid">
               <form action="ProductController" method="post" enctype="multipart/form-data">
                  <div class=" agile-wls-contact-mid">
                  <input type="hidden" name="sid" value="<%=s.getId()%>">
                  <div class="form-group contact-forms">
                        <input type="file" class="form-control" name="image" placeholder="Image">
                     </div>
                     <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="pname" placeholder="Product Name">
                     </div>
                      <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="pprice" placeholder="Product Price">
                     </div>
                      <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="pcategory" placeholder="Product Category">
                     </div>
                     <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="pdesc" placeholder="Product Description">
                     </div>
                     <button type="submit" name="action" value="upload" class="btn btn-block sent-butnn">Upload Product</button>
                  </div>
               </form>
            </div>
         </div>
         <!--//Seller Upload Product -->
      </section>
      <%@include file="footer.jsp" %>
      
   </body>
</html>