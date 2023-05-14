<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dao.AdminDao" %>
<%@page import="model.HallBook"%>  
<%@page import="dao.MemberDao" %>
<%@page import="model.Member"%>
<%@page import="dao.MemberDao" %> 
<%@page import="java.util.List" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Edit Booking Detail</title>
</head>
<body>
<%@ include file="admin-header.jsp" %>
<div class="row" style="margin-left:400px;margin-top:100px;width:800px;">
	<div class="col-md-6 validation-grids widget-shadow" data-example-id="basic-forms"> 
		<div class="form-title">
			<h4>Edit Booking Detail</h4>
		</div>
      <%
      		int bid = Integer.parseInt(request.getParameter("bid")); 
			HallBook b = AdminDao.adminGetBookHallDetailByBid(bid);
			int mid = b.getMid();
			Member m = AdminDao.adminGetMemberByMid(mid);
		%>
				<div class="form-body">
					<form data-toggle="validator" action="AdminController" method="post">
      					<input type="hidden" class="form-control" id="inputName" name="mid" value="<%=b.getMid() %>" required>
      					<input type="hidden" class="form-control" id="inputName" name="bid" value="<%=b.getBid() %>" required>
      					
						<div class="form-group">
							<input type="email" class="form-control" id="inputName" name="email" value="<%=m.getEmail() %>" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="inputName" name="b_subject" value="<%=b.getB_subject() %>" required>
						</div>
						<div class="form-group">
							<input type="date" class="form-control" id="inputName" name="b_date" value="<%=b.getB_date() %>" required>
						</div>
						
						
						<div class="form-group">
							<button type="submit" class="btn btn-primary enabled" name="action" value="adminEditBookHallDetail">Edit Booking Detail</button>
						</div>
					</form>
				</div>

	</div>	
</div>
<%@ include file="admin-footer.jsp" %>
</body>
</html>