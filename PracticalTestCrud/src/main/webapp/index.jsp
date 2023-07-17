<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<%@ page import="java.util.*" %>
<%@ page import="dao.EmployeeDao" %>
<%@ page import="model.Employee" %>   
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Employee Detail</h1>
<h2><a href="registerEmployee.jsp">Register Employee</a></h2><br>
<h2><a href="login.jsp">Employee Login</a></h2>

<%List<Employee> list = EmployeeDao.getAllEmployee(); %>
	 <table style="border:solid 2px;">
         <thead>
            <tr style="border:solid 2px;">
               <th>EID</th>
               <th>Name</th>
               <th>Contact</th>
               <th>Gender</th>
               <th>DOB</th>
               <th>Address</th>
               <th>Email</th>
               <th>Password</th>
               <th>Update</th>
               <th>Delete</th>
            </tr>
         </thead>
         <tbody>
         	<%for(Employee e:list){ %>
         		<tr style="border:solid 2px;">
         			<td><%=e.getEid() %></td>
         			<td><%=e.getName() %></td>
         			<td><%=e.getContact() %></td>
         			<td><%=e.getGender() %></td>
         			<td><%=e.getDob() %></td>
         			<td><%=e.getAddress() %></td>
         			<td><%=e.getEmail() %></td>
         			<td><%=e.getPassword() %></td>
         			<td><a href="Update-Employee.jsp?id=<%=e.getEid() %>">Update</a></td>
         			<td><a href="Delete-Employee.jsp?id=<%=e.getEid() %>">Delete</a></td>
         		</tr>
         	<%} %>
         </tbody>

	



</body>
</html>