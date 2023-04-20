<%@page import="dao.ProductDao"%>
<%@page import="model.ProductModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="seller_header.jsp" %>

<br><br><br>
<section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
         <br><br>
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Seller Profile</h3>
            <div class="contact-list-grid">
            
            <%int id = Integer.parseInt(request.getParameter("id")); %>
            <%ProductModel p = ProductDao.getProductByPid(id); %>
               <form action="ProductController" method="post" enctype="multipart/form-data">
          
                  <div class=" agile-wls-contact-mid">
                  
                  
                  <input type="hidden" name="pid" value="<%=p.getPid() %>">
                  
                  	<div class="form-group contact-forms">
                  	<img src="image/<%=p.getImage()%>" height="200px" width="200px">
                  	<br><br>
                        <input type="file" class="form-control" name="image" >
                       
                     </div>
                     <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="pname" value="<%=p.getPname() %>">
                     </div>
                     <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="pprice" value="<%=p.getPprice() %>">
                     </div>
                     <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="pcategory" value="<%=p.getPcategory() %>">
                     </div>
                     <div class="form-group contact-forms">
                        <input type="text" class="form-control" name="pdesc" value="<%=p.getPdesc() %>">
                     </div>
                     
                     
           
                     <button type="submit" class="btn btn-block sent-butnn" name="action" value="update">Update Product</button>
                  </div>
               </form>
            </div>
         </div>
         <!--//contact-map -->
      </section>


<%@include file="footer.jsp" %>
