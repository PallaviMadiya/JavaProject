<%@page import="model.Member"%>
<%@page import="model.HallBook"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="admin-header.jsp" %>
<!-- main content start-->

<div id="page-wrapper">
	<div class="main-page">
		<div class="tables">
			<h2 class="title1">View All Members Payment</h2>
			
			<form action="HallBookController" method="post">
			
			<button type = "submit" class = "btn btn-danger" name="action" value="adminViewAllHAllPayment">All Hall Rent Payments</button>
			
			<button type = "submit" class = "btn btn-primary" name="action" value="adminViewAllMaintenancePayment">All Maintenance Payments</button>
		
			</form>
			
			<div class="forms">
					<div class="inline-form widget-shadow">
						<div class="form-body">
							<div data-example-id="simple-form-inline"> 
							<form action="HallBookController" method="post" class="form-inline"> 
								<div class="form-group"> 
									<input type="text" class="form-control" id="exampleInputEmail3" name="mid"  placeholder="Enter Member ID"> 
								</div> 
								<button type="submit" class="btn btn-default" name="action" value="AdminViewMPaymentByMid">View Maintenance Payment</button> 
							</form> 
							</div>
						</div>
					</div>
				</div>	
					
				<div class="bs-example widget-shadow" data-example-id="contextual-table"> 
					<h4>Hall Rent Payments:</h4>
					
					
					
					<table class="table"> 
					<thead> 
					<tr> 
					<th>Hall Booking ID</th> 
					<th>Member ID</th> 
					<th>Member Name</th>
					<th>House No</th>
					<th>Booking Purpose</th>
					<th>Date of Booking</th>
					<th>Booking Payment</th>
					
					    
					</tr> 
					</thead> 
					<tbody> 
					<%List<HallBook> list = AdminDao.adminGetAllHallBooking(); %>
					<%for(HallBook h : list){ %>
					<tr class="active"> 
					<th scope="row"><%=h.getBid() %></th> 
					<td><%=h.getMid() %></td> 
						<%List<Member> list2 = AdminDao.getMemberByMid(h.getMid());%>
						<%for(Member m : list2){ %>
						<td><%=m.getFname() %> <%=m.getLname() %></td> 
						<td><%=m.getH_no() %></td>
						<%} %>
					<td><%=h.getB_subject() %></td> 
					<td><%=h.getB_date() %></td>
					<td><%=h.getBpayment_status()  %></td>
					
						
						
					
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

