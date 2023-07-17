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
   Employee e = null;
   if(session.getAttribute("data") != null)
   {
	   e = (Employee)session.getAttribute("data");
   }
   else
   {
	   response.sendRedirect("login.jsp");
   }
   %>
<h1>Home Page</h1>
<a href="logout.jsp">Logout</a>
<h3>Welcome <%=e.getName() %></h3>
</body>
</html>