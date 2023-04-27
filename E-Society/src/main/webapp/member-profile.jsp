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
          <li><a href="member-home.jsp">Home</a></li>
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
               <input style="margin-left:-350px;" type="hidden" name="mid" id="w3lName" value="<%=m.getMid() %>" class="contact-input" >
                    <div class="d-grid" style="margin-bottm:0px";>
                    	<label style="margin-top:10px;">First Name </label>
                        <input style="margin-left:-350px;" type="text" name="fname" id="w3lName" value="<%=m.getFname() %>" class="contact-input" >
                    </div>
                    <div class="d-grid">
                    	<label style="margin-top:10px;">Last Name</label>
						<input style="margin-left:-350px;" type="text" name="lname" id="w3lName" value="<%=m.getLname() %>" class="contact-input" >
                    </div>
                    <div class="d-grid">
                    	<label style="margin-top:10px;">Contact No</label>
                    	<input  style="margin-left:-350px;" type="text" name="contact" id="w3lPhone" value="<%=m.getContact() %>" class="contact-input"  />
                    </div>
                    
                     <div class="d-grid">
                     	<label style="margin-top:10px;">House No</label>
                    	<input style="margin-left:-350px;" type="number" name="h_no" id="w3lPhone" value="<%=m.getH_no() %>" class="contact-input"  />
                     </div>
                     <div class="d-grid">
	                    <label style="margin-top:10px;">Address</label>
                    	<input style="margin-left:-350px;" type="text" name="address" id="w3lSender" value="<%=m.getAddress() %>" class="contact-input"  />
                   	</div>
                     <div class="d-grid">
                     	<label style="margin-top:10px;">Join Date</label>
                        <input style="margin-left:-350px;" type="date" name="join_date" id="w3lSender" value="<%=m.getJoin_date() %>" class="contact-input"  />
                    </div>
                    
                   	<div class="d-grid">
                    	<label style="margin-top:10px;">Email Address</label>
                        <input  style="margin-left:-350px;" type="email" name="email" id="w3lSender" value="<%=m.getEmail() %>" class="contact-input"  />
                    </div>
                </div>
              
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