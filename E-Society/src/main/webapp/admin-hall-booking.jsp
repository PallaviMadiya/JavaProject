<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dao.AdminDao" %>
<%@page import="model.HallBook"%>  
<%@page import="dao.MemberDao" %>
<%@page import="model.Member"%> 
<%@page import="java.util.List" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Book Hall</title>
</head>
<body>
<%@ include file="admin-header.jsp" %>
<div class="row" style="margin-left:400px;margin-top:100px;width:800px;">
	<div class="col-md-6 validation-grids widget-shadow" data-example-id="basic-forms"> 
		<div class="form-title">
			<h4>Book Hall</h4>
		</div>
					 
		<div class="form-body">
			<form data-toggle="validator" action="AdminController" method="post">
			
				<div class="form-group">
					<input type="email" class="form-control" id="inputName" name="email" placeholder="Member Email" required>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="inputName" name="b_subject" placeholder="Enter Event Name" required>
				</div>
				<div class="form-group">
					<input type="number" class="form-control" id="inputName" name="b_hour" placeholder="Enter Hours For Booking" required>
				</div>
				<div class="form-group">
					<input type="date" class="form-control" id="inputName" name="b_date" placeholder="Enter Date" required>
				</div>
				<div class="form-group">
					<input type="time" class="form-control" id="inputName" name="b_time" placeholder="Enter Time" required>
				</div>
				
				<div class="form-group">
					<button type="submit" class="btn btn-primary enabled" name="action" value="adminBookHall">Book Now</button>
				</div>
			</form>
		</div>
	</div>	
</div>
<%@ include file="admin-footer.jsp" %>
</body>
</html>