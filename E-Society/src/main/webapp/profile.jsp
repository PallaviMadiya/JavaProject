<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Society-User Member Profile</title>
</head>
<body>
<%@include file="member-header.jsp" %>
<!-- about breadcrumb -->
  <section class="w3l-about-breadcrumb text-left">
    <div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
      <div class="container">
        <h2 class="title">Member Profile</h2>
        <ul class="breadcrumbs-custom-path mt-2">
          <li><a href="index.jsp">Home</a></li>
          <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Member Profile </li>
        </ul>
      </div>
    </div>
  </section>
  <!-- //about breadcrumb -->
  <!-- /Member Profile-->
  <div class="contact-form py-5" id="contact">
    <div class="container py-lg-5 py-md-4">
      
      <h3 class="hny-title mb-lg-5 mb-4">Member Profile</h3>
        <div class="contacts12-main mb-5">
            <form action="MemberController" method="post">
                <div class="main-input">
                <div class="col-lg-2 col-md-6 bottom-ab-right mt-5" >
         			 <img style="border:gray solid 3px;" src="assets/images/ab.jpg" class="img-curve img-fluid" alt="" />
       			</div>
                    <div class="d-grid">
                        <input type="text" name="fname" id="w3lName" placeholder="Your First Name" class="contact-input" required />
						<input type="text" name="lname" id="w3lName" placeholder="Your Last Name" class="contact-input" required />
                    </div>
                    <div class="d-grid">
                    	<input type="text" name="contact" id="w3lPhone" placeholder="Phone Number" class="contact-input" required />
                        <input type="email" name="email" id="w3lSender" placeholder="Your Email Address" class="contact-input" required />
                    </div>
                    
                </div>
               <!-- <textarea class="contact-textarea" name="w3lMessage" id="w3lMessage"
                    placeholder="Type your message here" required></textarea> -->
                <div class="text-left">
                    <button class="btn btn-style btn-primary btn-contact" type="submit" name="action" value="editProfile">Edit Profile</button>
                </div>
            </form>
        </div>
     </div>
  </div>
<%@include file="footer.jsp" %>
</body>
</html>