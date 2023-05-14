<%@page import="dao.NoticeDao"%>
<%@page import="model.Notice"%>
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

<div id="page-wrapper" >
			<div class="main-page compose right">
				<h2 class="title1">Edit Notice</h2>
				
				<div class="col-md-8 compose-right widget-shadow">
					<div class="panel-default">
						<div class="panel-heading">
							Edit Your Notice 
						</div>
						<div class="panel-body">
							<div class="alert alert-info">
								Please update details 
							</div>
							<form class="com-mail" action="NoticeController" method="post" align="center">
							<%int nid = Integer.parseInt(request.getParameter("id")); %>
							<%Notice n = (Notice)NoticeDao.getNoticeByNid(nid); %>
								<input type="hidden" class="form-control1 control3" value="<%=n.getNid() %>" name="nid">
								<input type="date" class="form-control1 control3" value="<%=n.getN_date() %>" name="n_date">
								<input type="text" class="form-control1 control3" value="<%=n.getN_subject() %>" name="n_subject">
								<textarea rows="6" class="form-control1 control2"   name="n_message" ><%=n.getN_message()%></textarea>
								
								<input type="submit" value="Edit Notice" name="action"> 
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
				</div>
				<div class="clearfix"> </div>	
			</div>
		</div>
<%@include file="admin-footer.jsp" %>
</body>
</html>