<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Login</h1>
 <%String msg1 = (String)request.getAttribute("msg1"); %>
 <%if(msg1!=null){ %>
  	<h4><%out.print(msg1); %></h4>
 <%} %>

<table>
		<form method="get" action="EmployeeController">
			
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
					<button type="submit" name="action" value="login">Login</button>
				</td>
			</tr>
		</form>	
	</table>
	 <h2><a href="index.jsp">Index</a></h2>

</body>
</html>