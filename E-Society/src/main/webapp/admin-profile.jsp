<%@page import="model.Admin"%>
<%@page import="dao.AdminDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Society Admin Profile</title>
</head>
<body>
<%@ include file="admin-header.jsp" %>

<body class="sidebar-menu-collapsed">
<%
	Admin a = null;
	if(session.getAttribute("adminData")!=null){
	   a = (Admin)session.getAttribute("adminData");
	}
	else{
	   response.sendRedirect("admin-login.jsp");
	}
%>
</body>
</html>