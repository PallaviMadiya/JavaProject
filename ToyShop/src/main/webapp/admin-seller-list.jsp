<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Model.Seller"%>
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
     Sellers List
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
            <th>Name</th>
            <th>Contact</th>
            <th>Address</th>
            <th>Email</th>
            <th>Edit</th>
            <th>Delete</th>
          </tr>
        </thead>
        <tbody>
        <%List<Seller> list = AdminDao.getAllSellers(); %>
        <%for(Seller s: list){ %>
          <tr data-expanded="true">
            <td><%=s.getId() %></td>
            <td><%=s.getName() %></td>
            <td><%=s.getContact() %></td>
            <td><%=s.getAddress() %></td>
            <td><%=s.getEmail() %></td>
            <td><a href="admin-seller-edit.jsp?id=<%=s.getId()%>">Edit</a></td>
            <td><a href="admin-seller-delete.jsp?id=<%=s.getId()%>">Delete</a></td>
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