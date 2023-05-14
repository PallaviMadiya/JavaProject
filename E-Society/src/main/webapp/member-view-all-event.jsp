<%@page import="dao.EventDao"%>
<%@page import="model.Event"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="member-header.jsp" %>

<section class="w3l-about-breadcrumb text-left">
    <div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
      <div class="container">
        <h2 class="title">View Events</h2>
        <ul class="breadcrumbs-custom-path mt-2">
          <li><a href="member-home.jsp">Home</a></li>
          <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> View Events </li>
        </ul>
      </div>
    </div>
  </section>

<br><br><br><br>
<h1 align="center">All Festive Celebrations of Society</h1>



<section class="w3l-services1">
    <div id="content-with-photo4-block" class="py-5">
      <div class="container py-md-5">

<%
	List<Event> list = EventDao.getAllEvents();
%>
<%
	if(list.isEmpty() == false){
%>
<% 
	for(Event e : list){
%>
        <div class="cwp4-two row">
          <div class="cwp4-image col-lg-6 pr-lg-5 mb-lg-0 mb-5">
            <img src="eimage/<%=e.getE_image() %>" class="img-fluid" alt="" width="450px" height="350px"/>
          </div>
          <div class="cwp4-text col-lg-6">
            <h6 class="sub-title"><%=e.getE_date() %></h6>
            <h3 class="hny-title"><%=e.getE_name() %></h3>
            <p><%=e.getE_desc() %></p>

          </div>

        </div>
<%
	}
%>
<%
	}
	else
	{
%>
	<h2 style="color:#ffab00"><center>No Events !!</center></h2>
<%
	}
%>
      </div>
    </div>
  </section>


<%@include file="footer.jsp" %>