<%@page import="Dao.ProductDao"%>
<%@page import="Model.Product"%>
<%@page import="Model.Seller"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@include file="seller-header.jsp" %>

     <br><br><br><br><br><br>
      <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Seller Edit Product Detail</h3>
            <div class="contact-list-grid">
            <%int id = Integer.parseInt(request.getParameter("id")); %>
            <%Product p = ProductDao.getProductByPid(id); %>
               <form action="ProductController" method="post" enctype="multipart/form-data">
                  <div class=" agile-wls-contact-mid">
                  
                  <input type="hidden" name="pid" value="<%=p.getPid()%>">
                  	  <div class="form-group contact-forms">
                  	  <img src="img/<%=p.getImage()%>" height="200px" width="200px">
                     </div>
                  <div class="form-group contact-forms">
                        <input type="file" class="form-control" name="image" >
                     </div>
                     <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="pname" value="<%=p.getPname()%>">
                     </div>
                      <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="pprice" value="<%=p.getPprice()%>">
                     </div>
                      <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="pcategory" value="<%=p.getPcategory()%>">
                     </div>
                     <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="pdesc" value="<%=p.getPdesc()%>">
                     </div>
                     <button type="submit" name="action" value="update" class="btn btn-block sent-butnn">Update Product</button>
                  </div>
               </form>
            </div>
         </div>
         <!--//contact-map -->
      </section>
     
     
     
     
     
      <%@include file="footer.jsp" %>

</body>
</html>