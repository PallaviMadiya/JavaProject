<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Society-User New Password</title>
</head>
<body>
<%@include file="header.jsp" %>
<!-- about breadcrumb -->
  <section class="w3l-about-breadcrumb text-left">
    <div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
      <div class="container">
        <h2 class="title">Member Set New Password</h2>
        <ul class="breadcrumbs-custom-path mt-2">
          <li><a href="index.jsp">Home</a></li>
          <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Set New Password </li>
        </ul>
      </div>
    </div>
  </section>
  <!-- //about breadcrumb -->
  <!-- /Member Set New Password-->
  <div class="contact-form py-5" id="contact">
    <div class="container py-lg-5 py-md-4">
      
      <h3 class="hny-title mb-lg-5 mb-4">Set New Password</h3>
        <% String msg = (String)request.getAttribute("msg"); %>
            <%if(msg!=null){ %>
            	<h3><%out.print(msg); %></h3>
            <%} %>
        <div class="contacts12-main mb-5">
      
            <form action="MemberController" method="post">
                <div class="main-input">
					<%String email = (String)request.getAttribute("email"); %>
					<input type="hidden" name="email" value="<%=email %>">
                    <div class="d-grid" >
                    	<input type="password" name="newPassword" id="w3lPhone" placeholder="New Password" class="contact-input" required />
                    </div>
                     <div class="d-grid" >
                    	<input type="password" name="confirmNewPassword" id="w3lPhone" placeholder="Confirm New Password" class="contact-input" required />
                    </div>
                </div>
               <!-- <textarea class="contact-textarea" name="w3lMessage" id="w3lMessage"
                    placeholder="Type your message here" required></textarea> -->
                <div class="text-left" style="align: left">
                    <button class="btn btn-style btn-primary btn-contact" type="submit" name="action" value="newPassword">Set New Password</button>
                </div>
            </form>
        </div>
     </div>
  </div>
<%@include file="footer.jsp" %>
</body>
</html>