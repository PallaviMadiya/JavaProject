<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="border:2px solid Gray; height:300px; width:450px;">
	<center><h2>Student Information Form</h2></center>
	<form method="post" action="ServletThree">
		<table>
		
			<tr>
				<td>
					<lable>First Name</lable>
				</td>
				<td>
					<input type="text" name="fname">
				</td>
			</tr>
			<tr>
				<td>
					<lable>Last Name</lable>
				</td>
				<td>
					<input type="text" name="lname">
				</td>
			</tr>
			<tr>
				<td>
					<lable>Email</lable>
				</td>
				<td>
					<input type="text" name="email">
				</td>
			</tr>
			<tr>
				<td>
					<lable>Mobile No</lable>
				</td>
				<td>
					<input type="number" name="contact">
				</td>
			</tr>
			<tr>
				<td>
					<lable>Gender</lable>
				</td>
				<td>
					Male <input type="radio" name="gender" value="Male">
					Female <input type="radio" name="gender" value="Female">
				</td>
			</tr>
			<tr>
				<td>
					<lable>Password</lable>
				</td>
				<td>
					<input type="password" name="password">
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" name="action" value="Submit Student Info">
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>