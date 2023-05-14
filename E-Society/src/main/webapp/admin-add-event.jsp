<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="admin-header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Society Admin Add Event</title>
</head>
<body>
<div id="page-wrapper">
			<div class="main-page compose right">
				<h2 class="title1">Add Event Details</h2>
				
				
				<div class="col-md-8 compose-right widget-shadow">
					<div class="panel-default">
						<div class="panel-heading">
							 
						</div>
						<div class="panel-body">
							<div class="alert alert-info">
								Please fill details 
							</div>
							<form class="com-mail" action="EventController" method="post" align="center" enctype="multipart/form-data">
								<input type="text" class="form-control1 control3" placeholder="Enter Event Name" name="e_name">
								<input type="date" class="form-control1 control3" placeholder="Event Date" name="e_date">
								<textarea rows="6" class="form-control1 control2" placeholder="Event description" name="e_desc" ></textarea>
								<input type="file" class="form-control1 control3" placeholder="Subject" name="e_image">
								
								
								<input type="submit" name="action"  value="Add Event" > 
							</form>
							<!-- <div class="form-group">
									<div class="btn btn-default btn-file">
										<i class="fa fa-paperclip"></i> Attachment
										<input type="file" name="attachment">
									</div>
									<p class="help-block">Max. 32MB</p>
								</div>-->
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>	
			</div>
		</div>


<%@include file="admin-footer.jsp" %>