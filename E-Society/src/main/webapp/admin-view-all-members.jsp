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
						<h4>Society Members Data:  
						<a style="margin-left:900px;" href="admin-add-new-member.jsp">
                		<i class="fa fa-user-plus"></i></h4></a>
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
						<th scope="row"><%=m.getMid() %></th> 
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
		
		
		
<%@include file="admin-footer.jsp" %>