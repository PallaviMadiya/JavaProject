<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="home-header.jsp" %>
 <!-- //banner-->
    <!--/login -->
    <section class="banner-bottom py-5">
        <div class="container">
            <div class="content-grid">
                <div class="text-center icon">
                    <span class="fa fa-user-circle-o">SIGN UP</span>
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
                                <input name="sid" id="text1" type="hidden" value="<%=s.getSid() %>" required="">
                            </div>
                        </div>
                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="fname" id="text1" type="text" value="<%=s.getFname() %>" placeholder="First Name" required="">
                            </div>
                        </div>
                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="lname" id="text1" type="text" value="<%=s.getLname() %>" placeholder="Last Name" required="">
                            </div>
                        </div>
                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="email" id="text1" type="email" value="<%=s.getEmail() %>" placeholder="Student Email" required="">
                            </div>
                        </div>
                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="contact" id="text3" type="number" value="<%=s.getContact() %>" placeholder="Contact No" required="">
                            </div>
                        </div>
                         <div class="field-group">

                            <div class="content-input-field">
                                <input name="address" id="text1" type="text" value="<%=s.getAddress() %>" placeholder="Student Address" required="">
                            </div>
                        </div>
                        <div class="field-group">
							Gender
                            <div class="checkbox-check-radio">
                               Male <input name="gender" id="text3" type="radio" value="<%=s.getGender() %>" required="">
                               Female <input name="gender" id="text3" type="radio" value="<%=s.getGender() %>" required="">
                            </div>
                        </div>
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="password" id="myInput" type="text" value="<%=s.getPassword() %>" >
                            </div>
                        </div>
                         <div class="field-group">

                            <div class="content-input-field">
                                <input name="login_status" id="text1" type="text" value="<%=s.getLogin_status() %>" required="">
                            </div>
                        </div>
                        <div class="content-input-field">
                            <button type="submit" class="btn" name="action" value="edit-profile">Update Profile</button>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- /login -->
</body>
</html>