<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="model.Pro_8_Student"%>  
<%@page import="dao.Pro_8_Dao" %>
   <%@page import="model.Pro_8_Deleted_Students"%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% int id = Integer.parseInt(request.getParameter("id")); 
	Pro_8_Student s = Pro_8_Dao.getStudentById(id);
    Pro_8_Dao.deleteStudentById(id);
    response.sendRedirect("Pro_8_Crud_Operation.jsp");
%>
</body>
</html>