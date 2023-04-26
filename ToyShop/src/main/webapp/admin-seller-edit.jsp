<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Model.Seller"%>
<%@page import="Dao.SellerDao"%>
<%@page import="Dao.AdminDao"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="admin-header.jsp" %>
<section id="main-content">
	<section class="wrapper">
		<div class="form-w3layouts">
            <!-- page start-->
            
           
      <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Form validations
                            <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-cog" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                             </span>
                        </header>
                        <div class="panel-body">
                            <div class=" form">
                            <%int id = Integer.parseInt(request.getParameter("id")); %>
                            <%Seller s = AdminDao.getSellerById(id); %>
                                <form class="cmxform form-horizontal " id="commentForm" method="post" action="SellerController" novalidate="novalidate">
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-3">Id</label>
                                        <div class="col-lg-6">
                                            <input class=" form-control" id="cname" name="id"  type="text" value="<%=s.getId()%>">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-3">Name</label>
                                        <div class="col-lg-6">
                                            <input class=" form-control" id="cname" name="name" type="text" value="<%=s.getName()%>">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-3">Contact</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="cemail" type="text" name="contact" value="<%=s.getContact()%>">
                                        </div>
                                    </div>
                                     <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-3">Address</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="cemail" type="text" name="address" value="<%=s.getAddress()%>">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="curl" class="control-label col-lg-3">Email</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="curl" type="email" name="email" value="<%=s.getEmail()%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-offset-3 col-lg-6">
                                            <button class="btn btn-primary" type="submit" name="action" value="aupdate">Update</button>
                                        </div>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </section>
                </div>
            </div>

           
          
            <!-- page end-->
        </div>
</section>
<%@include file="admin-footer.jsp" %>

</body>
</html>