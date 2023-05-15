<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/sql" prefix="sql" %>
<sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/test" user="root" password="" />
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL SQL Tag Library</title>
</head>
<body>
<sql:query var="users" dataSource="${dataSource}">
</body>
</html>