<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Society-User Validate OTP</title>
</head>
<body>
<%@include file="header.jsp" %>
	<!-- about breadcrumb -->
  <section class="w3l-about-breadcrumb text-left">
    <div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
      <div class="container">
        <h2 class="title">Validate OTP</h2>
        <ul class="breadcrumbs-custom-path mt-2">
          <li><a href="index.jsp">Home</a></li>
          <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Validate OTP </li>
        </ul>
      </div>
    </div>
  </section>
  <!-- //about breadcrumb -->
  <!-- /Member Validate OTP-->
  <div class="contact-form py-5" id="contact">
    <div class="container py-lg-5 py-md-4">
      
      <h3 class="hny-title mb-lg-5 mb-4">Validate OTP</h3>
        <div class="contacts12-main mb-5">
            <form action="MemberController" method="post">
                <div class="main-input">
                   
                    <div class="d-grid">
                        <input type="number" name="otp" id="w3lSender" placeholder="Enter Validate OTP " class="contact-input" required />
                    </div>                    
                </div>
                <div class="text-left" style="align: left">
                    <button class="btn btn-style btn-primary btn-contact" type="submit" name="action" value="validateOtp">Validate OTP</button>
                </div>
            </form>
        </div>
     </div>
  </div>
<%@include file="footer.jsp" %>
</body>
</html>