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
	System.out.println("Id"+id);
	Pro_8_Student s = Pro_8_Dao.getStudentById(id);
	System.out.println("Get Student Detail");
	Pro_8_Deleted_Students s1 = new Pro_8_Deleted_Students();
	s1.setId(s.getId());
	s1.setFname(s.getFname());
	s1.setLname(s.getLname());
	s1.setEmail(s.getEmail());
	s1.setContact(s.getContact());
	s1.setGender(s.getGender());
	s1.setPassword(s.getPassword());
	Pro_8_Dao.addDeletedStudent(s1);
	System.out.println("Add Deleted Student");
    Pro_8_Dao.deleteStudentById(id);
    System.out.println("Student Deleted");
    response.sendRedirect("Pro_8_Crud_Operation.jsp");
%>
</body>
</html>