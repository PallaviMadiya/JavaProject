<%@page import="service.Servicesss"%>
<%@page import="dao.AdminDao"%>
<%@page import="model.Admin"%>
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
    String emailid = request.getParameter("email");
	AdminDao.approvingRequest(emailid);
    Servicesss s = new Servicesss();
    s.sendMail(emailid);
    response.sendRedirect("admin-approve-registration-request.jsp");

%>
</body>
</html>