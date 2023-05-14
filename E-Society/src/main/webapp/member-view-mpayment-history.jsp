<%@page import="dao.MPaymentDao"%>
<%@page import="model.Maintenance"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="member-header.jsp"%>

<section class="w3l-about-breadcrumb text-left">
    <div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
      <div class="container">
        <h2 class="title">View Complaint</h2>
        <ul class="breadcrumbs-custom-path mt-2">
          <li><a href="member-home.jsp">Home</a></li>
          <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> View Complaint </li>
        </ul>
      </div>
    </div>
  </section>

<br><br><br><br>
<h1 align="center">View Your All Maintenance Payments</h1>
<br><br>

<table id="complaints" align="center">
  <tr>
    	<th>Payment ID</th> 
		<th>Payment Date</th>
		<th>Amount</th>
		
  </tr>
  <%List<Maintenance> list = MPaymentDao.getMaintenanceByMid(m.getMid()); %>
  <%for(Maintenance m1 : list){ %>
  
  <tr>
    <td><%=m1.getMp_id() %></td>
    <td><%=m1.getM_date() %></td>
    <td><%=m1.getM_amount() %></td>
    
  
	
  </tr>
 <%} %>
</table>

<br><br><br><br><br><br><br><br><br>
<%@include file="footer.jsp"%>