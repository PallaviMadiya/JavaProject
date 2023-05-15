<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Suceessful Login</title>
</head>
<body>
<%String user = (String)request.getAttribute("user"); %>
<h3 style="color:green">Welcome <%=user %></h3>
</body>
</html>