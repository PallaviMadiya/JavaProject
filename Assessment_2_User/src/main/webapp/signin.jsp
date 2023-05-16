<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign IN Page</title>
</head>
<body>
<%@include file="header.jsp" %>
 <!-- //banner-->
    <!--/login -->
    <section class="banner-bottom py-5">
        <div class="container">
            <div class="content-grid">
                <div class="text-center icon">
                    <span class="fa fa-unlock-alt">SIGN IN</span>
                </div>
                <% String msg1 = (String)request.getAttribute("msg1"); %>
	            <% if(msg1!=null){
	            %>
	            	<center><h3><%=msg1 %></h3></center><br>
	            <% } %>
                <div class="content-bottom">
                    <form action="StudentController" method="post">
                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="email" id="text1" type="email" value="" placeholder="Student Email" required="">
                            </div>
                        </div>
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="password" id="myInput" type="Password" placeholder="Password">
                            </div>
                        </div>
                        <div class="content-input-field">
                            <button type="submit" class="btn" name="action" value="signin">Sign In</button>
                        </div>
                        <ul class="list-login">
                            <li class="switch-slide">
                                <label class="switch">
                                    <input type="checkbox">
                                    <span class="slider round"></span>
                                    keep Logged in
                                </label>
                            </li>
                            <li>
                                <a href="checkEmail.jsp" class="text-right">Forgot password?</a>
                            </li>
                            <li class="clearfix"></li>
                        </ul>
                        <ul class="list-login-bottom">
                            <li class="">
                                <a href="signup.jsp" class="">Don't have an Account?</a>
                            </li>
                            <li class="">
                                <a href="#" class="text-right">Need Help?</a>
                            </li>
                            <li class="clearfix"></li>
                        </ul>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- /login -->
</body>
</html>