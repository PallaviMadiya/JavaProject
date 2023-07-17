<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="zxx">


<head>
	<title>Index Page</title>
</head>

<body>
	


	<div class="text-center">
		<h2>
			<a href="register">Register</a>
		</h2>
		<h2>
			<a href="about">About</a>
		</h2>
	</div>
	
	
	 <%int roll = (Integer)request.getAttribute("rollno"); %>
		<h1><%=roll %></h1> 
		<h1>${rollno }</h1>
		<h1>${list }</h1>
		<c:forEach items="${list }" var="u">
		<h2>${u }</h2>
		</c:forEach> 
</body>
</html>