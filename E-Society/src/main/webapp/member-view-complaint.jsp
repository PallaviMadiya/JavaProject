<%@page import="model.ComplaintReply"%>
<%@page import="dao.ComplaintDao"%>
<%@page import="model.Complaint"%>
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
<h1 align="center">View Your All Complaints</h1>
<br><br>
<%List<Complaint> list = ComplaintDao.getComplaintByMemberId(m.getMid()); %>
<%if(list.isEmpty() == false) {%>
<table id="complaints" align="center">
  <tr>
    	<th>Complaint ID</th> 
		<th>Complaint Subject</th>
		<th>Date of Complaint</th>
		<th>Complaint Description</th>
		<th>Status</th>
		<th>Secretary Reply</th>
  </tr>
  
  <%for(Complaint c : list){ %>
  <tr>
    <td><%=c.getCid() %></td>
    <td><%=c.getSubject() %></td>
    <td><%=c.getCdate() %></td>
    <td><%=c.getDescription() %></td>
    <td><%=c.getComplaint_status() %></td>
  
	  <%List<ComplaintReply> crlist = ComplaintDao.getAdminReplyByComplaintId(c.getCid()); %>
		<%if(crlist.isEmpty()){ %>
			<td>Not Replied</td>
		<%}else{ %>
							
		<%for(ComplaintReply cr: crlist){ %>
			<td>Replied : <%=cr.getC_reply() %> <br>On Date : <%=cr.getReply_date() %></td>
		<%} %>
		<%} %>
  </tr>
  <%} %>
 
</table>
<%
}
else
{
%>
<h2 style="color:#ffab00"><center>You have no complaints !!</center></h2>
<%
}
%>
<br><br><br><br><br><br><br><br><br>
<%@include file="footer.jsp"%>