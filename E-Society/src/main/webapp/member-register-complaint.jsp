<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="member-header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complaint</title>
</head>
<body>

<!-- about breadcrumb -->
  <section class="w3l-about-breadcrumb text-left">
    <div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
      <div class="container">
        <h2 class="title">Make Complaint</h2>
        <ul class="breadcrumbs-custom-path mt-2">
          <li><a href="index.jsp">Home</a></li>
          <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Make Complaint </li>
        </ul>
      </div>
    </div>
  </section>
  <!-- //about breadcrumb -->
  <!-- /Member SignUp-->
  <div class="contact-form py-5" id="contact">
    <div class="container py-lg-5 py-md-4">
      
      <h3 class="hny-title mb-lg-5 mb-4">Make Complaint</h3>
        <div class="contacts12-main mb-5">
        
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
            <form action="ComplaintController" method="post">
            
                <div class="main-input">
                    <div class="d-grid">
                    	<input type="hidden" name="mid" id="w3lName"  class="contact-input" value="<%=m.getMid() %>" />
            			<input type="hidden" name="h_no" id="w3lName"  class="contact-input" value="<%=m.getH_no() %>" />
                        <input type="text" name="subject" id="w3lName" placeholder="Your Complaint Subject" class="contact-input" required />
						<input type="date" name="cdate" id="w3lName"  class="contact-input" required />
                    </div>
                    
                    
                </div>
               <textarea class="contact-textarea" name="description" id="w3lMessage"
                    placeholder="Enter your complaint here..." required></textarea>
                <div class="text-left">
                    <button class="btn btn-style btn-primary btn-contact" type="submit" name="action" value="complaintRegister">Register Complaint</button>
                </div>
            </form>
        </div>
     </div>
  </div>
<%@include file="footer.jsp" %>
</body>
</html>