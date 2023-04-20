<%@page import="Model.Seller"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@include file="seller-header.jsp" %>

		<section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
			<div class="container py-lg-5 py-md-4 py-sm-4 py-3">
				<h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Seller Change Password</h3>
				<div class="contact-list-grid">
					<br>
					<br>
					<%
					String msg = (String) request.getAttribute("msg");
					%>
					<%
					if (msg != null) {
					%>
					<h3>
						<%
						out.print(msg);
						%>
					</h3>
					<%
					}
					%>
					<%
					String msg1 = (String) request.getAttribute("msg1");
					%>
					<%
					if (msg1 != null) {
					%>
					<h3>
						<%
						out.print(msg1);
						%>
					</h3>
					<%
					}
					%>
					<br>
					<form action="SellerController" method="post">
						<div class=" agile-wls-contact-mid">
							<div class="form-group contact-forms">
								<input type="hidden" class="form-control" name="id"
									value="<%=s.getId()%>">
							</div>
							<div class="form-group contact-forms">
								<input type="password" class="form-control" name="op"
									placeholder="Old Password">
							</div>
							<div class="form-group contact-forms">
								<input type="password" class="form-control" name="np"
									placeholder="New Password">
							</div>
							<div class="form-group contact-forms">
								<input type="password" class="form-control" name="cnp"
									placeholder="Confirm New Password">
							</div>

							<button type="submit" name="action" value="change password"
								class="btn btn-block sent-butnn">Update</button>
						</div>
					</form>
				</div>
			</div>
			<!--//contact-map -->
		</section>



<%@include file="footer.jsp" %>

</body>
</html>