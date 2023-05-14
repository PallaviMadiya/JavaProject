<%@page import="dao.HallBookDao"%>
<%@page import="model.HallBook"%>
<%@page import="model.Complaint"%>
<%@page import="dao.EventDao"%>
<%@page import="model.Event"%>
<%@page import="dao.NoticeDao"%>
<%@page import="model.Notice"%>
<%@page import="dao.MPaymentDao"%>
<%@page import="model.Maintenance"%>
<%@page import="model.Admin"%>
<%@page import="model.Member"%>
<%@page import="dao.AdminDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="admin-header.jsp" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
-->
<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
			<div class="col_3">
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-users dollar2 icon-rounded"></i>
                    <div class="stats">
					<%List<Member> list = AdminDao.approveMemebersList(); %>
					<%System.out.println(list.size()); %>
					  <h5><strong><%=list.size() %></strong></h5>
                      <span>Society Members</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-laptop user1 icon-rounded"></i>
                    <div class="stats">
					<% List<Notice> list1 = NoticeDao.getAllNotices(); %>
					  <h5><strong><%=list1.size() %></strong></h5>
                      <span>Circulars</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-money user2 icon-rounded"></i>
                    <div class="stats">
                    <%List<Maintenance> list2 = MPaymentDao.getAllMaintenance(); %>
                      <h5><strong><%=list2.size() %></strong></h5>
                      <span>Payments</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-pie-chart dollar1 icon-rounded"></i>
                    <div class="stats">
                    <% List<Event> list3 = EventDao.getAllEvents(); %>
                      <h5><strong><%=list3.size() %></strong></h5>
                      <span>Events</span>
                    </div>
                </div>
        	 </div>
        	 
        	 <div class="col-md-3 widget">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-file-text-o dollar2 icon-rounded"></i>
                    <div class="stats">
                    <% List<HallBook> list7 = HallBookDao.getHallBookList(); %>
                      <h5><strong><%=list7.size() %></strong></h5>
                      <span>Booking Hall</span>
                    </div>
                </div>
        	 </div>
        	 <%-- 
        	 <div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-file-text-o dollar1 icon-rounded"></i>
                    <div class="stats">
                    <% List<HallBook> list7 = HallBookDao.getHallBookList(); %>
                      <h5><strong><%=list7.size() %></strong></h5>
                      <span>Booking Hall</span>
                    </div>
                </div>
        	 </div> --%>
        	
        	<div class="clearfix"> </div>
		</div>
		
		
			
				
			</div>
		</div>  
		
<%@ include file="admin-footer.jsp" %>