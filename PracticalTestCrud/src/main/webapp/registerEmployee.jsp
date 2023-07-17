<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<table>
		<form method="get" action="EmployeeController">
			<tr>
				<td>
					<lable>Employee Name</lable>
				</td>
				<td>
					<input name="name" type="text" value=""  required="">
				</td>
			</tr>
			<tr>
				<td>
					<lable>Employee Contact</lable>
				</td>
				<td>
					<input name="contact" type="text" value=""  required="">
				</td>
			</tr>
			<tr>
				<td>
					<lable>Gender</lable>
				</td>
				<td>
				 	Male <input name="gender"  type="radio" value="male" required="">
                     Female <input name="gender"  type="radio" value="female" required="">
				</td>
			</tr>
			<tr>
				<td>
					<lable>Date Of Birth</lable>
				</td>
				<td>
					<input name="dob" type="date" value=""  required="">
				</td>
			</tr>
			<tr>
				<td>
					<lable>Address</lable>
				</td>
				<td>
					<input name="address" type="text" value=""  required="">
				</td>
			</tr>
			<tr>
				<td>
					<lable>Employee Email</lable>
				</td>
				<td>
					<input name="email" type="text" value=""  required="">
				</td>
			</tr>
			<tr>
				<td>
					<lable>Password</lable>
				</td>
				<td>
					<input name="password"  type="text" value=""  required="">
				</td>
			</tr>
			<tr>
				<td>
					<button type="submit" name="action" value="register">Register Employee</button>
				</td>
			</tr>
		</form>	
	</table>
	
</body>
</html>