<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Society Member Book Hall</title>
</head>
<body>
<%@include file="member-header.jsp" %>
<!-- about breadcrumb -->
  <section class="w3l-about-breadcrumb text-left">
    <div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
      <div class="container">
        <h2 class="title">Member Hall Booking</h2>
        <ul class="breadcrumbs-custom-path mt-2">
          <li><a href="member-home.jsp">Home</a></li>
          <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Member Hall Booking </li>
        </ul>
      </div>
    </div>
  </section>
  <!-- //about breadcrumb -->
  <!-- /Member Profile-->
  <div class="contact-form py-5" id="contact">
    <div class="container py-lg-5 py-md-4">
      
      <h3 class="hny-title mb-lg-5 mb-4">Member Hall Booking</h3>
        <div class="contacts12-main mb-5">
            <form action="HallBookController" method="post">
            <%String msg = (String)request.getAttribute("msg"); %>
            <%
            	if(msg != null)
            	{
            %>
            <h3><%=msg %></h3>
            <%
            	}
            %>
            <br>
                <div class="main-input">
                    	<input type="hidden" name="mid" id="w3lPhone" value="<%=m.getMid() %>" class="contact-input" >
                    <div class="d-grid">
                        <input type="text" name="b_subject" id="w3lName" placeholder="Enter Event Name" class="contact-input" required />
						
                    </div>
                    <div class="d-grid">
                    	<input type="date" name="b_date" id="w3lPhone" placeholder="Enter Date" class="contact-input" required />
                        
                    </div>
                    
                    
                </div>
               <!-- <textarea class="contact-textarea" name="w3lMessage" id="w3lMessage"
                    placeholder="Type your message here" required></textarea> -->
                <div class="text-left">
                    <button class="btn btn-style btn-primary btn-contact" type="submit" name="action" value="bookHall">Book Hall</button>
                </div>
            </form>
        </div>
     </div>
  </div>
<%@include file="footer.jsp" %>

</body>
</html>