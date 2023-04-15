<%@page import="model.Member"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="admin-header.jsp" %>    

<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="tables">
					<h2 class="title1">All Society Members</h2>
					
					
					<%System.out.println("List Of Approve Member");%>
					
					<div class="bs-example widget-shadow" data-example-id="contextual-table"> 
						<h4>Society Members Data:</h4>
						<table class="table"> 
						<thead> 
						<tr> 
						<th>ID</th> 
						<th>Full Name</th> 
						<th>Contact</th> 
						<th>House Number</th>
						<th>Address</th>
						<th>Join Date</th>
						<th>Email</th>
						<th>Register Status</th>
						    
						</tr> 
						</thead> 
						<tbody> 
						<%List<Member> list = AdminDao.adminGetAllMembers(); %>
						<%for(Member m : list){ %>
						<tr class="active"> 
						<th scope="row"><%=m.getId() %></th> 
						<td><%=m.getFname() %> <%=m.getLname() %></td> 
						<td><%=m.getContact() %></td> 
						<td><%=m.getH_no() %></td>
						<td><%=m.getAddress() %></td>
						<td><%=m.getJoin_date() %></td>
						<td><%=m.getEmail() %></td>
						<td><%=m.getRegister_status() %></td>
						
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