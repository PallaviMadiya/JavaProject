<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="border:2px solid Gray; height:200px; width:300px;">
	<center><h2>Form</h2></center>
	<%
		String msg = (String)request.getAttribute("msg");
		if(msg != null)
			
		{
	%>
		<h4><%=msg %></h4>
	<%
		}
	%>

	<form method="post" action="ServletFive">
		<table>
		
			<tr>
				<td>
					<input type="text" name="fname" placeholder="Enter First Name">
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="lname" placeholder="Enter Last Name">
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="contact" placeholder="Enter Contact No">
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="email" placeholder="Enter Email Address">
				</td>
			</tr>
			<tr>
				<td>
					<input type="password" name="password" placeholder="Enter Password">
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" name="action" value="validate">
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>