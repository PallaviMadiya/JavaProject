<%@page import="model.Event"%>
<%@page import="dao.EventDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>

    
<%@ include file="admin-header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Society Admin All Events</title>
</head>
<body>
<%List<Event> list = EventDao.getAllEvents();%>
<div id="page-wrapper">
	<div class="main-page general">
		<h2 class="title1">All Event Details</h2>
		<div style="margin-left:850px;"><a href="admin-add-event.jsp"><button type="button" class="btn btn-info btn-flat btn-pri" ><i class="fa fa-plus" aria-hidden="true"></i>Event</button></a></div>
		
		<%if(list.isEmpty()){ %>
			<h2 style="color: gray";><center>No Event Available!!</center></h2>
		<%}else{ %>
			<%for(Event e : list ){ %>
			<div class="col-md-16 panel-grids" style="margin-top:10px;">
			<div class="panel panel-info"> 
				<div class="panel-heading"> 
					<h2 class="panel-title" style="font-size:18px;"> 
					Event of <%=e.getE_name() %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date: <%=e.getE_date() %>
						
					 </h2>
					  <a href="admin-edit-event.jsp?id=<%=e.getEid()%>"><i style="margin-left:120px; font-size:18px;" class="fa fa-edit"></i></a>
					  <a href="admin-delete-event.jsp?id=<%=e.getEid()%>"><i style="margin-left:30px; font-size:18px;" class="fa fa-trash-o"> </i></a>
				</div> 
				<div class="panel-body"> 
					 <center><img src="eimage/<%=e.getE_image()%>" height="250px" width="400px"></center>
					 <br><br>
					 <%=e.getE_desc() %>
					 
					
                  	
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