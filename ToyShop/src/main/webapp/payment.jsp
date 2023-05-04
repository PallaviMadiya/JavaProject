<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ToyShop Customer Payment</title>
<style type="text/css">
	.bttnStyle
	{
		background-color: lightblue;
		border-radius: 0.50rem;
		border:1px solid transperent;
	}
</style>
<script type="text/javascript">
	var xhttp=new XMLHttpRequest();
	var RazorpayOrderId;
	function CreateOrderID()
	{
		/*  alert("1");  */
		var number=document.getElementById("amount").value;
		xhttp.open("POST","http://localhost:8080/ToyShop/OrderCreation?amount="+number,false);
		/* alert("2"); */
		xhttp.send();
		RazorpayOrderId=xhttp.responseText;
		  
		alert(number);  
		OpenCheckOut(number); 
		OpenCheckOut();
	}
</script>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script type="text/javascript">
	function OpenCheckOut()
	{
		/* alert("3");  */
		var number=document.getElementById("amount").value;
		/* alert(number); */
		var options={
				"key":"rzp_test_sPIH2pgpcqCtml",
				"amount":number,
				"currency":"INR",
				"name":"Villince",	
				"description":"Test",
				"order_id":RazorpayOrderId,
				
				"callback_url":"http://localhost:8080/ToyShop/customer-home.jsp",
				"prefill":{
					"name":"Villince Patel",
					"email":"vilincep@gmail.com",
					"contact":"9638998288"
				},
				"notes":{
					"address":"Ahmedabad"
				},
				"theme":{
					"color":"#3399cc"
				}
				
				
		};
		var rzp1=new Razorpay(options);
		rzp1.on('payment.failed',function (response){
			alert(response.error.code);
	        alert(response.error.description);
	        alert(response.error.source);
	        alert(response.error.step);
	        alert(response.error.reason);
	        alert(response.error.metadata.order_id);
	        alert(response.error.metadata.payment_id);
		});
		rzp1.open();
	    /* e.preventDefault(); */
	}
</script>
</head>
<body>
<%@include file="customer-header.jsp" %>

<%int am = Integer.parseInt(request.getParameter("amount"));
System.out.println("Amount"+am);
%>
<center> 
	<input type="hidden" id="amount" value="<%=am%>">
	
	<button style="border:2px black solid;border-radius:5px;height:40px; width:100px;margin-top:200px;" id="payButton" onclick="CreateOrderID()" class="bttnStyle">Pay Now</button>
</center>

</body>
</html>