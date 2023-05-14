<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.HallBookDao" %>
<%@page import="model.HallBook"%>

    
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
        <h2 class="title">Member Edit Hall Booking Detail</h2>
        <ul class="breadcrumbs-custom-path mt-2">
          <li><a href="member-home.jsp">Home</a></li>
          <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span>Member Edit Hall Booking Detail</li>
        </ul>
      </div>
    </div>
  </section>
  <!-- //about breadcrumb -->
  <!-- /Member Profile-->
  <div class="contact-form py-5" id="contact">
    <div class="container py-lg-5 py-md-4">
      <%int bid = Integer.parseInt(request.getParameter("bid")); %>
      <%HallBook b = HallBookDao.getHallBookDetailByBid(bid); %>
      <h3 class="hny-title mb-lg-5 mb-4">Edit Your Hall Booking Detail</h3>
        <div class="contacts12-main mb-5">
            <form action="HallBookController" method="post">
                <div class="main-input">
                        <input type="hidden" name="bid" id="w3lPhone" value="<%=b.getBid() %>" class="contact-input" style="outline:none;">
                    	<input type="hidden" name="mid" id="w3lPhone" value="<%=b.getMid() %>" class="contact-input" >
                    <div class="d-grid">
                        <input type="text" name="b_subject" id="w3lName" value="<%=b.getB_subject() %>" class="contact-input" required />
						
                    </div>
                    <div class="d-grid">
                    	<input type="date" name="b_date" id="w3lPhone" value="<%=b.getB_date() %>" class="contact-input" required />
                        
                    </div>
                    
                    
                </div>
               <!-- <textarea class="contact-textarea" name="w3lMessage" id="w3lMessage"
                    placeholder="Type your message here" required></textarea> -->
                <div class="text-left">
                    <button class="btn btn-style btn-primary btn-contact" type="submit" name="action" value="editBookHallDetail">Edit Booking Detail</button>
                </div>
            </form>
        </div>
     </div>
  </div>
<%@include file="footer.jsp" %>

</body>
</html>