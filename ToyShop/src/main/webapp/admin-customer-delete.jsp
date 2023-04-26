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
<%
int id = Integer.parseInt(request.getParameter("id"));
AdminDao.deleteCustomer(id);
response.sendRedirect("admin-customer-list.jsp");
%>

</body>
</html>