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
<title>Admin All Hall Booking</title>
</head>
<body>
<%@ include file="admin-header.jsp" %>

<div id="page-wrapper">
	<div class="main-page general">
		<h2 class="title1">Hall Booking</h2>
		<div style="margin-left:1120px;"><a href="admin-hall-booking.jsp"><button type="button" class="btn btn-info btn-flat btn-pri" ><i class="fa fa-plus" aria-hidden="true"></i>Book Hall</button></a></div>
		<%List<HallBook> bookingList = AdminDao.adminGetAllHallBooking(); %>
		<%if(bookingList.isEmpty()){ %>		
			<h2 style="color: gray";><center>No Bookings !!</center></h2>
		<%}else{ %>
			<%for(HallBook b : bookingList ){ %>
				<%List<Member> memberList = AdminDao.getMemberByMid(b.getMid()); %>	
					<%for(Member m : memberList ){ %>						
						<div class="col-md-16 panel-grids" style="margin-top:10px;">
							<div class="panel panel-info"> 
								<div class="panel-heading"> 
									<h2 class="panel-title" style="font-size:18px;"> 
										<%=b.getB_subject() %> &nbsp;&nbsp;&nbsp;&nbsp; Date: <%=b.getB_date() %>
									 </h2> 
								</div> 
								<div class="panel-body"> 
									 Member Name: <%=m.getFname() %><br>
									 Hall Booking Event: <%=b.getB_subject() %><br>									 
									 Booking Date: <%=b.getB_date() %><br>
								</div> 
							</div>
						</div>
					<%} %>
			<%} %>
		<%} %>
		
	</div>
</div>

<%@ include file="admin-footer.jsp" %>
</body>
</html>