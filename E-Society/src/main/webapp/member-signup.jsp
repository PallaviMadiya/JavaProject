<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Society-User Member SignUp</title>
</head>
<body>
<%@include file="header.jsp" %>
<!-- about breadcrumb -->
  <section class="w3l-about-breadcrumb text-left">
    <div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
      <div class="container">
        <h2 class="title">Member SignUp</h2>
        <ul class="breadcrumbs-custom-path mt-2">
          <li><a href="index.jsp">Home</a></li>
          <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Member SignUp </li>
        </ul>
      </div>
    </div>
  </section>
  <!-- //about breadcrumb -->
  <!-- /Member SignUp-->
  <div class="contact-form py-5" id="contact">
    <div class="container py-lg-5 py-md-4">
      
      <h3 class="hny-title mb-lg-5 mb-4">Member Sign Up</h3>
        <div class="contacts12-main mb-5">
        <%
        	String msg1 = (String)request.getAttribute("msg1");
        	if(msg1 != null)
        	{
        %>
     		<h4><%=msg1 %></h4>
        <%
        	}
        %>
        <%
        	String msg = (String)request.getAttribute("msg");
        	if(msg != null)
        	{
        %>
     		<h4><%=msg %></h4>
        <%
        	}
        %>
        <br>
            <form action="MemberController" method="post">
                <div class="main-input">
                    <div class="d-grid">
                        <input type="text" name="fname" id="w3lName" placeholder="Your First Name" class="contact-input" required />
						<input type="text" name="lname" id="w3lName" placeholder="Your Last Name" class="contact-input" required />
                    </div>
                    <div class="d-grid">
                    	<input type="text" name="contact" id="w3lPhone" placeholder="Your Phone Number" class="contact-input" required />
                        <input type="text" name="h_no" id="w3lSender" placeholder="Your House Number" class="contact-input" required />
                    </div>
                    <div class="d-grid">
                    	<input type="text" name="address" id="w3lPhone" placeholder="Your Address" class="contact-input" required />
                        <input type="date" name="join_date" id="w3lSender" class="contact-input" required />
                    </div>
                    <div class="d-grid">
                    	<input type="email" name="email" id="w3lPhone" placeholder="Your Email Address" class="contact-input" required />
                        <input type="password" name="password" id="w3lSender" placeholder="Your Password" class="contact-input" required />
                    </div>
                    
                </div>
               <!-- <textarea class="contact-textarea" name="w3lMessage" id="w3lMessage"
                    placeholder="Type your message here" required></textarea> -->
                <div class="text-left">
                    <button class="btn btn-style btn-primary btn-contact" type="submit" name="action" value="memberSignUp">Sign Up</button>
                </div>
            </form>
        </div>
     </div>
  </div>
<%@include file="footer.jsp" %>
</body>
</html>