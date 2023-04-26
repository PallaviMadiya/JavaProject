<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Society Admin Add New Member</title>
</head>
<body>
<%@include file="admin-header.jsp" %> 

<div class="row" style="margin-left:400px;margin-top:100px;width:800px;">
	<div class="col-md-6 validation-grids widget-shadow" data-example-id="basic-forms"> 
		<div class="form-title">
			<h4>Register New Member</h4>
		</div>
			<%
        	String msg = (String)request.getAttribute("msg1");
        	if(msg != null)
        	{System.out.println(msg);
	        %>
        		<div class="alert alert-danger" role="alert">	        
	     		<%=msg %>
	     		
	     		</div>
	        <%
	        	}
	        %>
		
		 
		<div class="form-body">
			<form data-toggle="validator" action="AdminController" method="post">
			
				<div class="form-group">
					<input type="text" class="form-control" id="inputName" name="fname" placeholder="Member First Name" required>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="inputName" name="lname" placeholder="Member Last Name" required>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="inputName" name="contact" placeholder="Member Contact" required>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="inputName" name="h_no" placeholder="Member House No" required>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="inputName" name="address" placeholder="Member Address" required>
				</div>
				<div class="form-group">
					<input type="date" class="form-control" id="inputName" name="join_date" placeholder="Joining Date" required>
				</div>
				
				<div class="form-group has-feedback">
					<input type="email" class="form-control" id="inputEmail" name="email" placeholder="Member Email" required>
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="inputName" name="password" placeholder="Password" required>
				</div>
				
				<div class="form-group">
					<button type="submit" class="btn btn-primary enabled" name="action" value="adminAddMember">Register Member</button>
				</div>
			</form>
		</div>
	</div>	
</div>
   
<%@include file="admin-footer.jsp" %>
</body>
</html>