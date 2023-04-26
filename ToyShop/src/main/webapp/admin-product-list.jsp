<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Model.Product"%>
<%@page import="Dao.AdminDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="admin-header.jsp" %>
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<div class="table-agile-info">
 <div class="panel panel-default">
    <div class="panel-heading">
     Product List
    </div>
    <div>
      <table class="table" ui-jq="footable" ui-options='{
        "paging": {
          "enabled": true
        },
        "filtering": {
          "enabled": true
        },
        "sorting": {
          "enabled": true
        }}'>
        <thead>
          <tr>
            <th data-breakpoints="xs">ID</th>
             <th>Product</th>
             <th>Product Name</th>
             <th>Price</th>
             <th>Remove</th>
        </tr>
        </thead>
        <tbody>
         <%List<Product> list = AdminDao.getAllProduct(); %>
         <%for(Product p:list){ %>
          <tr data-expanded="true">
            <td><%=p.getPid() %></td>
            <td><img src="img/<%=p.getImage() %>" alt="" class="img-responsive" width=100px height="100px"></td>
            <td><%=p.getPname()%></td>
            <td><%=p.getPprice() %></td>
            <td><a href="admin-product-delete.jsp?id=<%=p.getPid()%>">Delete</a></td>
          </tr>
       <%} %>
        </tbody>
      </table>
    </div>
  </div>
</div>
</section>
<%@include file="admin-footer.jsp" %>

</body>
</html>