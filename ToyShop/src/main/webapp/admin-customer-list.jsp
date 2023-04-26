<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Model.Customer"%>
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
     Customer List
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
        <%List<Customer> list = AdminDao.getAllCustomer(); %>
        <%System.out.println("List SIze:"+list.size()); %>
        <%for(Customer c: list){ %>
          <tr data-expanded="true">
            <td><%=c.getCid() %></td>
            <td><%=c.getName() %></td>
            <td><%=c.getContact() %></td>
            <td><%=c.getAddress() %></td>
            <td><%=c.getEmail() %></td>
            <td><a href="admin-customer-edit.jsp?id=<%=c.getCid()%>">Edit</a></td>
            <td><a href="admin-customer-delete.jsp?id=<%=c.getCid()%>">Delete</a></td>
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