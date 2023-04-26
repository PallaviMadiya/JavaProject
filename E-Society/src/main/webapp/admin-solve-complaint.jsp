<%@page import="model.Member"%>
<%@page import="dao.AdminDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	int cid = Integer.parseInt(request.getParameter("cid"));
    AdminDao.adminSolvedComplaint(cid);
    response.sendRedirect("admin-manage-complaint.jsp");
    
%>
</body>
</html>