<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Society-User Login</title>
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
      
      <h3 class="hny-title mb-lg-5 mb-4">Member Sign In</h3>
        <div class="contacts12-main mb-5">
            <form action="MemberController" method="post">
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
        					String msg2 = (String)request.getAttribute("msg2");
        					if(msg2 != null)
        					{
        				%>
     					<h4><%=msg2 %></h4>
        				<%
        					}
        				%>
        				
        				<%
        					String msg3 = (String)request.getAttribute("msg3");
        					if(msg3 != null)
        					{
        				%>
     					<h4><%=msg3 %></h4>
        				<%
        					}
        				%>
                		<br>
				
                <div class="main-input">
                   
                    <div class="d-grid">
                        <input type="email" name="email" id="w3lSender" placeholder="Your Email Address" class="contact-input" required />
                    </div>
                    <div class="d-grid" >
                    	<input type="password" name="password" id="w3lPhone" placeholder="Your Password" class="contact-input" required />
                    </div>
                </div>
               <!-- <textarea class="contact-textarea" name="w3lMessage" id="w3lMessage"
                    placeholder="Type your message here" required></textarea> -->
                <div class="text-left" >
                    <button class="btn btn-style btn-primary btn-contact" type="submit" name="action" value="memberSignIn">Member Sign In</button>
     	            <span style="margin-left:250px;"><a href="member-forget-password.jsp" >Forget Password?</a></span>
                </div>
                
            </form>
        </div>
     </div>
  </div>
<%@include file="footer.jsp" %>
</body>
</html>