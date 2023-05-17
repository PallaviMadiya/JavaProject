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
                    <span class="fa fa-user-circle-o"><BR><BR>USER PROFILE</span>
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
                                <input name="fname" id="text1" type="text" value="<%=s.getFname() %>" placeholder="First Name" required="" readonly>
                            </div>
                        </div>
                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="lname" id="text1" type="text" value="<%=s.getLname() %>" placeholder="Last Name" required="" readonly>
                            </div>
                        </div>
                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="email" id="text1" type="email" value="<%=s.getEmail() %>" placeholder="Student Email" required="" readonly>
                            </div>
                        </div>
                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="contact" id="text3" type="number" value="<%=s.getContact() %>" placeholder="Contact No" required="" readonly>
                            </div>
                        </div>
                         <div class="field-group">

                            <div class="content-input-field">
                                <input name="address" id="text1" type="text" value="<%=s.getAddress() %>" placeholder="Student Address" required="" readonly>
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
                                <input name="password" id="myInput" type="text" value="<%=s.getPassword() %>"  readonly>
                            </div>
                        </div>
                        <div class="content-input-field">
                            <button type="button" class="btn" name="action" value="edit"><a href="edit-profile.jsp">Edit Profile</a></button>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- /login -->
</body>
</html>