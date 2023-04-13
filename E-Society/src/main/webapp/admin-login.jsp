<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Required meta tags -->
  
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>Collective Admin Panel a Flat Bootstrap Responsive Website Template | Login :: W3Layouts</title>

  <!-- Template CSS -->
  <link rel="stylesheet" href="admin/assets/css/style-starter.css">

  <!-- google fonts -->
  <link href="admin/assets/css/style-starter.css" rel="stylesheet">
<div id="_bsa_srv-CKYI627U_0"></div><div id="_bsa_srv-CKYI653J_1"></div></head>

<body>
  <section>
    <!-- content -->
    <div class="">
        <!-- login form -->
        <section class="login-form py-md-5 py-3">
            <div class="card card_border p-md-4">
                <div class="card-body">
                
                    <!-- form -->
                    <form action="AdminController" method="post">
                        <div class="login__header text-center mb-lg-5 mb-4">
                            <h3 class="login__title mb-2">Sign In</h3>
                            
                        </div>
                        
                        <%
        					String msg1 = (String)request.getAttribute("msg1");
        					if(msg1 != null)
        					{
        				%>
     					<h4><%=msg1 %></h4>
        				<%
        					}
        				%>
        		
        				<%
        					String msg2 = (String)request.getAttribute("msg2");
        					if(msg2 != null)
        					{
        				%>
     					<h4><%=msg2 %></h4>
        				<%
        					}
        				%>
                		<br>
                        
                        <div class="form-group">
                            <label for="exampleInputEmail1" class="input__label">Email</label>
                            <input type="email" name="email" class="form-control login_text_field_bg input-style" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required="" autofocus="">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1" class="input__label">Password</label>
                            <input type="password" name="password" class="form-control login_text_field_bg input-style" id="exampleInputPassword1" placeholder="" required="">
                        </div>
                       
                        <div class="d-flex align-items-center flex-wrap justify-content-between">
                            <button type="submit" name="action" value="AdminSignIn" class="btn btn-primary btn-style mt-4">Sign In</button>
                            
                        </div>
                    </form>
                    <!-- //form -->
                    <p class="backtohome mt-4"><a href="index.jsp" class="back"><i class="fa fa-chevron-left" aria-hidden="true"></i>Back to Home </a></p>
                </div>
            </div>
        </section>

    </div>
    <!-- //content -->

</section>





</body></html>