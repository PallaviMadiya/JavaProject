<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
<%@ page import="dao.EmployeeDao" %>
<%@ page import="model.Employee" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%int id = Integer.parseInt(request.getParameter("id")); %>
<%	System.out.println("Employee Id: "+id);%>

<%Employee e = EmployeeDao.getEmployeByEid(id); %>
	<table>
		<form method="get" action="EmployeeController">
		<tr>
				
				<td>
					<input name="eid" type="hidden" value="<%=e.getEid() %>"  required="">
				</td>
			</tr>
			<tr>
				<td>
					<lable>Employee Name</lable>
				</td>
				<td>
					<input name="name" type="text" value="<%=e.getName() %>"  required="">
				</td>
			</tr>
			<tr>
				<td>
					<lable>Employee Contact</lable>
				</td>
				<td>
					<input name="contact" type="text" value="<%=e.getContact() %>"  required="">
				</td>
			</tr>
			<tr>
				<td>
					<lable>Gender</lable>
				</td>
				<td>
				 	Male <input name="gender"  type="radio" value="<%=e.getGender() %>" required="">
                     Female <input name="gender"  type="radio" value="<%=e.getGender() %>" required="">
				</td>
			</tr>
			<tr>
				<td>
					<lable>Date Of Birth</lable>
				</td>
				<td>
					<input name="dob" type="date" value="<%=e.getDob() %>"  required="">
				</td>
			</tr>
			<tr>
				<td>
					<lable>Address</lable>
				</td>
				<td>
					<input name="address" type="text" value="<%=e.getAddress() %>"  required="">
				</td>
			</tr>
			<tr>
				<td>
					<lable>Employee Email</lable>
				</td>
				<td>
					<input name="email" type="text" value="<%=e.getEmail() %>"  required="">
				</td>
			</tr>
			<tr>
				<td>
					<lable>Password</lable>
				</td>
				<td>
					<input name="password"  type="text" value="<%=e.getPassword() %>"  required="">
				</td>
			</tr>
			<tr>
				<td>
					<button type="submit" name="action" value="update">Update Employee Detail</button>
				</td>
			</tr>
		</form>	
	</table>
</body>
</html>