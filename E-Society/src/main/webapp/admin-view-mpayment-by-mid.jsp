<%@page import="dao.MPaymentDao"%>
<%@page import="model.Maintenance"%>
<%@page import="model.Member"%>

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
					<%	String msg = (String)request.getAttribute("msg");
    					if(msg != null)
    					{%>
	 						<h4><%=msg %></h4>
   					<% }%>
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
					<h4>Maintenance Payments:</h4>
					
					
					<table class="table"> 
					<thead> 
					<tr> 
					<th>Payment ID</th> 
					<th>Member ID</th> 
					<th>Member Name</th>
					<th>House No</th>
					<th>Date Of Joining</th>
					<th>Date of Payment</th>
					<th>Amount</th>
					
					    
					</tr> 
					</thead> 
					<tbody> 
					<%	int mid = Integer.parseInt(request.getParameter("mid"));
    					if(mid!=0){   					
							
							System.out.println("Member ID:"+mid);
							List<Maintenance> list1 = MPaymentDao.getMaintenanceByMid(mid);
							for(Maintenance m1 : list1){ %>
								<tr class="active"> 
								<th scope="row"><%=m1.getMp_id() %></th> 
								<td><%=m1.getMid() %></td> 
								<%List<Member> list2 = AdminDao.getMemberByMid(m1.getMid());%>
								<%for(Member m2 : list2){ %>
									<td><%=m2.getFname() %> <%=m2.getLname() %></td> 
									<td><%=m2.getH_no() %></td>
									<td><%=m2.getJoin_date() %></td> 
								<%} %>
						
								<td><%=m1.getM_date() %></td>
								<td><%=m1.getM_amount()  %></td>
							<%} %>
					<%}%>
					
					</tr> 
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


