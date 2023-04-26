<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="admin-header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Society Admin Add Notice</title>
</head>
<body>
<div id="page-wrapper">
			<div class="main-page compose">
				<h2 class="title1">Compose Notice</h2>
				
				<div class="col-md-4 compose-left">
					<div class="folder widget-shadow">
						<ul>
							<li class="head">Select</li>
							<li><a href="#"><i class="fa fa-users"></i>All Members <span>52</span></a></li>
							<li><a href="admin-view-all-notice.jsp"><i class="fa fa fa-user"></i>All Notices</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-8 compose-right widget-shadow">
					<div class="panel-default">
						<div class="panel-heading">
							Compose New Notice 
						</div>
						<div class="panel-body">
							<div class="alert alert-info">
								Please fill details 
							</div>
							<form class="com-mail" action="NoticeController" method="post">
								<input type="date" class="form-control1 control3" placeholder="Date" name="n_date">
								<input type="text" class="form-control1 control3" placeholder="Subject" name="n_subject">
								<textarea rows="6" class="form-control1 control2" placeholder="Notice" name="n_message" ></textarea>
								
								<input type="submit" value="add notice" name="action"> 
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
</body>
</html>