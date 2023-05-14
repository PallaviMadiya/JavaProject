<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List" %>   

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div style="border:2px solid Gray; height:300px; width:450px;">

	<center><h2>Student Information</h2></center>
	<p>First Name: ${param.fname }</p>
	<p>Last Name: ${param.lname}</p>
	<p>Email: ${param.email}</p>
	<p>Contact: ${param.contact}</p>
	<p>Gender: ${param.gender}</p>
	<p>Password: ${param.password}</p>
	
</div>
</body>
</html>