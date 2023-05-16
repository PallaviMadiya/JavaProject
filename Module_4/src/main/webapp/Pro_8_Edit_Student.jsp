<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@page import="model.Pro_8_Student"%>  
<%@page import="dao.Pro_8_Dao" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<title>Bootstrap Simple Login Form with Blue Background</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style>
	body {
		color: #fff;
		background: #3598dc;
		font-family: 'Roboto', sans-serif;
	}
    .form-control{
		height: 41px;
		background: #f2f2f2;
		box-shadow: none !important;
		border: none;
	}
	.form-control:focus{
		background: #e2e2e2;
	}
    .form-control, .btn{        
        border-radius: 3px;
    }
	.signup-form{
		width: 390px;
		margin: 30px auto;
	}
	.signup-form form{
		color: #999;
		border-radius: 3px;
    	margin-bottom: 15px;
        background: #fff;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
	.signup-form h2 {
		color: #333;
		font-weight: bold;
        margin-top: 0;
    }
    .signup-form hr {
        margin: 0 -30px 20px;
    }    
	.signup-form .form-group{
		margin-bottom: 20px;
	}
	.signup-form input[type="checkbox"]{
		margin-top: 3px;
	}
	.signup-form .row div:first-child{
		padding-right: 10px;
	}
	.signup-form .row div:last-child{
		padding-left: 10px;
	}
    .signup-form .btn{        
        font-size: 16px;
        font-weight: bold;
		background: #3598dc;
		border: none;
		min-width: 140px;
    }
	.signup-form .btn:hover, .signup-form .btn:focus{
		background: #2389cd !important;
        outline: none;
	}
    .signup-form a{
		color: #fff;
		text-decoration: underline;
	}
	.signup-form a:hover{
		text-decoration: none;
	}
	.signup-form form a{
		color: #3598dc;
		text-decoration: none;
	}	
	.signup-form form a:hover{
		text-decoration: underline;
	}
    .signup-form .hint-text {
		padding-bottom: 15px;
		text-align: center;
    }
</style>
</head>
<body>
<% int id = Integer.parseInt(request.getParameter("id")); 
   Pro_8_Student s = Pro_8_Dao.getStudentById(id);
%>
<div class="signup-form">
    <form action="ServletEight" method="post">
		<h2>Register Student</h2>
		<p>Please fill in this form to create an account!</p>
		<hr>
		<div class="form-group">
        	<input type="hidden" class="form-control" name="id" value="<%=s.getId() %>" required="required">
        </div>
        <div class="form-group">
			<div class="row">
				<div class="col-xs-6"><input type="text" class="form-control" name="fname" placeholder="First Name" value="<%=s.getFname() %>" required="required"></div>
				<div class="col-xs-6"><input type="text" class="form-control" name="lname" placeholder="Last Name" value="<%=s.getLname() %>" required="required"></div>
			</div>        	
        </div>
        <div class="form-group">
        	<input type="email" class="form-control" name="email" placeholder="Email" value="<%=s.getEmail() %>" required="required">
        </div>
        <div class="form-group">
        	<input type="number" class="form-control" name="contact" placeholder="Contact" value="<%=s.getContact() %>" required="required">
        </div>
        <div class="form-group">
           	<label>Gender</label>
           	<%if(s.getGender()=="male"){ %>
           		System.out.println(s.getGender);<% }
           	else{ 
           		System.out.println("No Data Male "+s.getGender());}%>
           	
           	<%if(s.getGender()=="femaexitle"){ %>
           		System.out.println(s.getGender);<% }
           	else{ 
           		System.out.println("No Data FemMale "+s.getGender());}%>
           		
  			<div class="row">
	        	<div class="col-xs-6"><input type="radio" class="form-control" name="gender" value="male" <%if(s.getGender().equals("male")){ %>cheked<% }%> required="required" style="height:20px;width:20px;">Male</div>
				<div class="col-xs-6"><input type="radio" class="form-control" name="gender" value="female" <%if(s.getGender().equals("female")){ %>cheked<% }%> required="required" style="height:20px;width:20px;">Female</div>
        	</div>
        </div>
		<div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Password" value="<%=s.getPassword() %>" required="required">
        </div>       
		<div class="form-group">
            <button type="submit" name="action" value="edit" class="btn btn-primary btn-lg">Edit Student Detail</button>
        </div>
    </form>
</div>
</body>
</html>