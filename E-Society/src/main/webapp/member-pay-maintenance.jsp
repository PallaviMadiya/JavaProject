<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Society-User Login</title>
</head>
<body>
<%@include file="member-header.jsp" %>
<!-- about breadcrumb -->
  <section class="w3l-about-breadcrumb text-left">
    <div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
      <div class="container">
        <h2 class="title">Member Maintenance Payment</h2>
        <ul class="breadcrumbs-custom-path mt-2">
          <li><a href="index.jsp">Home</a></li>
          <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span>Member Maintenance Payment </li>
        </ul>
      </div>
    </div>
  </section>
  <!-- //about breadcrumb -->
  <!-- /Member SignUp-->
  <div class="contact-form py-5" id="contact">
    <div class="container py-lg-5 py-md-4">
      
      <h3 class="hny-title mb-lg-5 mb-4">Pay Your Maintenance</h3>
        <div class="contacts12-main mb-5">
        <table id="complaints"><tr><th>Monthly Payment</th><th>Yearly Payment</th></tr> <tr><td>1000</td><td>12000</td></tr></table>
        <br>
            <form action="MaintenancePayment" method="post">
                <div class="main-input">
                    <div class="d-grid">
                    	<input type="hidden" name="mid" value="<%=m.getMid() %>" />
                        <input type="date" name="m_date" id="w3lName" class="contact-input" required />
						
                    </div>
                    <div class="d-grid">
                    	<input type="number" name="m_amount" id="w3lPhone" min="1000" step="1000" max="12000" value="1000" class="contact-input" required />
                       
                    </div>
                    
                    
                </div>
               <!-- <textarea class="contact-textarea" name="w3lMessage" id="w3lMessage"
                    placeholder="Type your message here" required></textarea> -->
                <div class="text-left">
                    <button class="btn btn-style btn-primary btn-contact" type="submit" name="action" value="PayMaintenance">Pay Maintenance</button>
                </div>
            </form>
        </div>
     </div>
  </div>
<%@include file="footer.jsp" %>
</body>
</html>