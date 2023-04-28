<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.HallBookDao" %>
<%@page import="model.HallBook"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%int bid = Integer.parseInt(request.getParameter("bid")); %>
<%HallBookDao.deleteHallBooking(bid);%>
<%response.sendRedirect("admin-view-hall-booking.jsp"); %>
</body>
</html>