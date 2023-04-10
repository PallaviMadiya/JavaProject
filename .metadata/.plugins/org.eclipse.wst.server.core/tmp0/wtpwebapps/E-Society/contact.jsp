<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp" %>

	<!-- /contact-->
	  <div class="contact-form py-5" id="contact">
	    <div class="container py-lg-5 py-md-4">
	      
	      <h3 class="hny-title mb-lg-5 mb-4">Get in touch</h3>
	        <div class="contacts12-main mb-5">
	            <form action="https://sendmail.w3layouts.com/submitForm" method="post">
	                <div class="main-input">
	                    <div class="d-grid">
	                        <input type="text" name="w3lName" id="w3lName" placeholder="Your Name" class="contact-input" />
	                        <input type="text" name="w3lPhone" id="w3lPhone" placeholder="Phone Number"
	                            class="contact-input" />
	                    </div>
	                    <div class="d-grid">
	                        <input type="email" name="w3lSender" id="w3lSender" placeholder="Your Email id"
	                            class="contact-input" required />
	                        <input type="text" name="w3lSubject" id="w3lSubject" placeholder="Subject"
	                            class="contact-input" />
	                    </div>
	                </div>
	                <textarea class="contact-textarea" name="w3lMessage" id="w3lMessage"
	                    placeholder="Type your message here" required></textarea>
	                <div class="text-right">
	                    <button class="btn btn-style btn-primary btn-contact">Submit Now</button>
	                </div>
	            </form>
	        </div>
	            
	        <div class="row pt-lg-4">
	          <div class="col-md-12">
	              <div class="row">
	                  <div class="col-lg-4 col-md-6">
	                      <div class="contact-address">
	                          <ul>
	                              <li class="icon-color"><span class="fa fa-map-marker"></span> <span>E-Society, Ahmedabad - Gujarat</span> </li>
	                          </ul>
	                      </div>
	                  </div>
	                  <div class="col-lg-4 col-md-6 mt-md-0 mt-4">
	                      <div class="contact-address">
	                          <ul>
	                              <li class="icon-color"><span class="fa fa-phone"></span> <span><a class="" href="tel:+(21)-234-9999">Phone :8849455423</a>
	                          </ul>
	                      </div>
	                  </div>
	                  <div class="col-lg-4 col-md-6 mt-lg-0 mt-4">
	                      <div class="contact-address">
	                          <ul>
	                              <li class="icon-color"><span class="fa fa-mail-reply"></span><span>
	                                  <a href="mailto:travel@mail.com"> eSociety2023.gmail.com</a>
	                              </li>
	                          </ul>
	                      </div>
	                  </div>
	              </div>
	          </div>
	      </div>
	    </div>
	  </div>
	   
	
	<!--//contact-->
<%@include file="footer.jsp" %>

</body>
</html>