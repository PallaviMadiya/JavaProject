<%@page import="dao.EventDao"%>
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
	int eid = Integer.parseInt(request.getParameter("id"));
	EventDao.deleteEvent(eid);
	response.sendRedirect("admin-view-all-event.jsp");

%>

</body>
</html>