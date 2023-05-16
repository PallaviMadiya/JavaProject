<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Verify OTP Page</title>
</head>
<body>
<%@include file="header.jsp" %>
<%
	String email = (String)request.getAttribute("email");
	int otp = (Integer)request.getAttribute("otp");
%>
 <!-- //banner-->
    <!--/login -->
    <section class="banner-bottom py-5">
        <div class="container">
            <div class="content-grid">
                <div class="text-center icon">
                    <span class="fa fa-unlock-alt">VERIFY OTP</span>
                </div>
                 <% String msg = (String)request.getAttribute("msg"); %>
	            <% if(msg!=null){
	            %>
	            	<center><h3><%=msg %></h3></center><br>
	            <% } %>
                <div class="content-bottom">
                    <form action="StudentController" method="post">
                    
                   		 <div class="field-group">
                            <div class="content-input-field">
                                <input name="email" id="text1" type="hidden" value="<%=email %>" required="">
                            </div>
                        </div>
                        
                         <div class="field-group">
                            <div class="content-input-field">
                                <input name="otp1" id="text1" type="hidden" value="<%=otp %>" placeholder="Enter OTP" required="">
                            </div>
                        </div>
                        
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="otp2" id="text1" type="text" value="" placeholder="Enter OTP" required="">
                            </div>
                        </div>
                
                        <div class="content-input-field">
                            <button type="submit" class="btn" name="action" value="validateOTP">Verify OTP</button>
                        </div>
                         </ul>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- /login -->
</body>
</html>