<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.NoticeDao"%>
<%@page import="java.util.List"%>
<%@page import="model.Notice"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Society-User Member View Notice</title>
</head>
<body>
<%@include file="member-header.jsp" %>
<!-- about breadcrumb -->
  <section class="w3l-about-breadcrumb text-left">
    <div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
      <div class="container">
        <h2 class="title">Society Notice</h2>
        <ul class="breadcrumbs-custom-path mt-2">
          <li><a href="member-home.jsp">Home</a></li>
          <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Society Notice </li>
        </ul>
      </div>
    </div>
  </section>
  <!-- //about breadcrumb -->
  
   <!--/grids-->
   <% List<Notice> list = NoticeDao.getAllNotices(); %>
   <div class="contact-form py-5" id="contact">
   		<div class="container py-lg-5 py-md-4">
   			<h3 class="hny-title mb-lg-5 mb-4">Society Notices</h3>
   			<hr style="border-bottom: 2px solid var(--secondary-color);">
   			
   			<%for(Notice n: list){ %>
   			<div style="height:auto; width:1150px; "><br>
   			
   					<h3 style="font-size: 20px;line-height:26px;">
   						Subject:<span style="color: var(--secondary-color);font-size: 20px;"><%=n.getN_subject() %></span><br>
   						Date: <span style="color: var(--secondary-color);font-size: 20px;"><%=n.getN_date() %></span>
					</h3>
					
   				<p style="margin-top: 15px;color: var(--font-color);"><%=n.getN_message() %></p>
   				<br>
   				<hr style="border-bottom: 2px solid var(--secondary-color);">
   			</div>
   			<%} %>
   			
    	</div>
    </div>
  <!--//grids-->
  

<%@include file="footer.jsp" %>
</body>
</html>