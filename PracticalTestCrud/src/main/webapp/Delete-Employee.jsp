<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.util.*" %>
<%@ page import="dao.EmployeeDao" %>
<%@ page import="model.Employee" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int id = Integer.parseInt(request.getParameter("id"));
EmployeeDao.deleteEmployee(id);
response.sendRedirect("index.jsp");
%>
</body>
</html>