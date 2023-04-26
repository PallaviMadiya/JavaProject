<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="admin-header.jsp" %> 
   
<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="forms">
					<h2 class="title1">Reply Member's Complaint</h2>
					
					<div class=" form-grids row form-grids-right">
						<div class="widget-shadow " data-example-id="basic-forms"> 
							<div class="form-title">
								<h4>Enter Your Reply :</h4>
							</div>
							<div class="form-body">
								<form class="form-horizontal" action="ComplaintController" method="post"> 
								
								<% String reply = (String)request.getAttribute("reply");%>
					            <%
					            	if(reply!=null){
					            %>
					            <h3><%=reply %></h3>
					            <br/>
					            <%} %>
								
								<%int cid = Integer.parseInt(request.getParameter("cid")); %>
								<input type="hidden" name="cid" value="<%=cid%>" >
									<div class="form-group"> 
										<label for="inputEmail3" class="col-sm-2 control-label">Reply Here: </label> 
											<div class="col-sm-9"> 
												<input type="text" name="c_reply" class="form-control" id="inputEmail3" placeholder="Enter your reply"> 
											</div> 
									</div> 
									 
									 
									<div class="col-sm-offset-2"> 
										<button type="submit" name="action" value="adminReply" class="btn btn-default">Send Reply</button> </div> 
								</form> 
							</div>
						</div>
					</div>
					
					
					
					
				</div>
			</div>
		</div>

<%@include file="admin-footer.jsp" %>