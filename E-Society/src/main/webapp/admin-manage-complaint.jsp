<%@page import="dao.ComplaintDao"%>
<%@page import="model.ComplaintReply"%>
<%@page import="model.Complaint"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="admin-header.jsp" %>
<!-- main content start-->

<div id="page-wrapper">
	<div class="main-page">
		<div class="tables">
			<h2 class="title1">Manage Society Members Complaints</h2>
			
			<form action="ComplaintController" method="post">
			
			<button type = "submit" class = "btn btn-danger" name="action" value="adminManageComplaint">Manage Complaints</button>
			
			<button type = "submit" class = "btn btn-primary" name="action" value="adminViewAllComplaints">All Complaints</button>
		
			<!-- Indicates a successful or positive action -->
			<button type = "submit" class = "btn btn-success" name="action" value="adminViewSolvedComplaints">Solved Complaints</button>
				
			<!-- Indicates caution should be taken with this action -->
			<button type = "submit" class = "btn btn-warning" name="action" value="adminViewPendingComplaints">Unsolved Complaints</button>
		
			<!-- Indicates a dangerous or potentially negative action -->
			<!-- <button type = "button" class = "btn btn-danger" >Unsolved Complaints</button> -->
			</form>				
					
				<div class="bs-example widget-shadow" data-example-id="contextual-table"> 
					<h4>Manage Complaints:</h4>
					
					
					
					<table class="table"> 
					<thead> 
					<tr> 
					<th>Complaint ID</th> 
					<th>Member ID</th> 
					<th>House No</th> 
					<th>Complaint Subject</th>
					<th>Date of Complaint</th>
					<th>Complaint Description</th>
					<th>Reply</th>
					<th>Change status if solved</th>
					<th>Status</th>
					    
					</tr> 
					</thead> 
					<tbody> 
					<%List<Complaint> list = AdminDao.getAllRegisteredComplaints(); %>
					<%for(Complaint c : list){ %>
					<tr class="active"> 
					<th scope="row"><%=c.getCid() %></th> 
					<td><%=c.getMid() %></td> 
					<td><%=c.getH_no() %></td> 
					<td><%=c.getSubject() %></td>
					<td><%=c.getCdate()  %></td>
					<td><%=c.getDescription() %></td>
						<%List<ComplaintReply> crlist = ComplaintDao.getAdminReplyByComplaintId(c.getCid()); %>
						<%if(crlist.isEmpty()){ %>
							<td><a href="admin-reply-complaint.jsp?cid=<%=c.getCid() %>">Reply</a></td>
						<%}else{ %>
						
						<%for(ComplaintReply cr: crlist){ %>
						
							<td>Replied : <%=cr.getC_reply() %> <br>On Date : <%=cr.getReply_date() %></td>
						<%} %>
						<%} %>
						
						<%String c_status = AdminDao.checkComplaintStatus(c.getCid()); %>
						<%if(c_status.equals("solved")){ %>
							<td>Complaint has been solved</td>
						<%}else{ %>
							<td><a href="admin-solve-complaint.jsp?cid=<%=c.getCid() %>">Solved</a></td>
						<%} %>
						
					<td><%=c.getComplaint_status() %></td>
					
					</tr> 
					<%} %>
					</tbody> 
					</table> 
				</div>
					
				</div>
			</div>
		</div>
		
		
	
	<!-- side nav js -->
	<script src='admin/assets/js/SidebarNav.min.js' type='text/javascript'></script>
	<script>
      $('.sidebar-menu').SidebarNav()
    </script>
	<!-- //side nav js -->
	
	<!-- Classie --><!-- for toggle left push menu script -->
		<script src="admin/assets/js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			
			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!-- //Classie --><!-- //for toggle left push menu script -->
	
	<!--scrolling js-->
	<script src="admin/assets/js/jquery.nicescroll.js"></script>
	<script src="admin/assets/js/scripts.js"></script>
	<!--//scrolling js-->
	
	<!-- Bootstrap Core JavaScript -->
	<script src="admin/assets/js/bootstrap.js"> </script>

<%@include file="admin-footer.jsp" %>