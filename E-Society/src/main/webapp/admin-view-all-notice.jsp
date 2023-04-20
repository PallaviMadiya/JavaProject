<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.NoticeDao"%>
<%@page import="java.util.List"%>
<%@page import="model.Notice"%>

    
<%@ include file="admin-header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Society Admin All Notices</title>
</head>
<body>
<% List<Notice> list = NoticeDao.getAllNotices(); %>
<div id="page-wrapper">
	<div class="main-page general">
		<h2 class="title1">All Notices</h2>
		<%if(list.isEmpty()){ %>
			<h2 style="color: gray";><center>No Notice Available!!</center></h2>
		<%}else{ %>
			<%for(Notice n : list ){ %>
			<div class="col-md-16 panel-grids">
			<div class="panel panel-info"> 
				<div class="panel-heading"> 
					<h2 class="panel-title" style="font-size:18px;"> 
						<%=n.getN_subject() %> &nbsp;&nbsp; <%=n.getN_date() %>
						 <a href="#"><i style="margin-left:780px; font-size:18px;" class="fa fa-edit"></i></a>
						 <a href="#"><i style="margin-left:30px; font-size:18px;" class="fa fa-trash-o"> </i></a>
					 </h2> 
				</div> 
				<div class="panel-body"> 
					 <%=n.getN_message() %>
				</div> 
			</div>
		</div>
		<%} %>
		<%} %>
		
	</div>
</div>
<%@include file="admin-footer.jsp" %>
</body>
</html>