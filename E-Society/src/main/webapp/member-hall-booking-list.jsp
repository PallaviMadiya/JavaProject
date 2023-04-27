<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="model.HallBook"%>
<%@page import="dao.HallBookDao" %>
<%@page import="model.Member"%>
<%@page import="java.util.List"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Society Member Hall Book List</title>
</head>
<body>
<%@include file="member-header.jsp" %>

<!-- about breadcrumb -->
  <section class="w3l-about-breadcrumb text-left">
    <div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
      <div class="container">
        <h2 class="title">Member Hall Booking</h2>
        <ul class="breadcrumbs-custom-path mt-2">
          <li><a href="member-home.jsp">Home</a></li>
          <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Member Hall Booking </li>
        </ul>
      </div>
    </div>
  </section>
  <!-- //about breadcrumb -->

 <!--/grids-->
   <% List<HallBook> list = HallBookDao.getHallBookListByMid(m.getMid()); %>
   <div class="contact-form py-5" id="contact">
   		<div class="container py-lg-5 py-md-4">
   			<h3 class="hny-title mb-lg-5 mb-4">Member Hall Booking</h3>
   			<%for(HallBook b: list){ %>
   			<div style="height:auto; width:1150px; ">
   					<h3 style="font-size: 18px;line-height:26px;">
   					<form action="#" method="post" class="subscribe-wthree pt-lg-3 mt-4">
                		<div class="flex-wrap subscribe-wthree-field">
                		<input type="hidden" name="mid" value="<%=b.getMid() %>">
	                  		Subject:<span style="color: var(--secondary-color);font-size: 18px;">
	                  		<input type="hidden" name="bid" value="<%=b.getBid() %>">
	                  		<input type="text" name="b_subject" value="<%=b.getB_subject() %>" ></span><br>
	   						Date: <span style="color: var(--secondary-color);font-size: 18px;">
	   						<input type="date" name="b_date" value="<%=b.getB_date() %>" ></span><br>
	   						Time: <span style="color: var(--secondary-color);font-size: 18px;">
	   						<input type="time" name="b_time" value="<%=b.getB_time() %>" ></span><br>
	   						Hour: <span style="color: var(--secondary-color);font-size: 18px;">
	   						<input type="number" name="b_hour" value="<%=b.getB_hour() %>" ></span><br>
                 			<a href="member-edit-booking-detail.jsp?bid=<%=b.getBid() %>"><button class="btn btn-style btn-primary" type="button" name="action">Edit Booking Detail</button></a>
                 			<a href="member-delete-hall-booking.jsp?bid=<%=b.getBid() %>"><button class="btn btn-style btn-primary" type="button" name="action">Delete Hall Booking</button></a>
               			 </div>
             		</form>
             		
   				</h3>
   			</div>
   			<%} %>
   			<hr style="border-bottom: 2px solid var(--secondary-color);width:500px;margin-left:0px;">
    	</div>
    </div>
  <!--//grids-->
<%@include file="footer.jsp" %>
</body>
</html>