<%@page import="dao.NoticeDao"%>
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
	int nid = Integer.parseInt(request.getParameter("id"));
	NoticeDao.deleteNotice(nid);
	response.sendRedirect("admin-view-all-notice.jsp");
%>

</body>
</html>