<%@page import="dao.WishlistDao"%>
<%@page import="dao.ProductDao"%>
<%@page import="model.ProductModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="customer_header.jsp" %>

<div class="inner_page-banner one-img">
      </div>
      <!--//banner -->
      <!-- short -->
      <div class="using-border py-3">
         <div class="inner_breadcrumb  ml-4">
            <ul class="short_ls">
               
            </ul>
         </div>
      </div>
      <!-- //short-->
      <!--//banner -->
      <!--/shop-->
      <section class="banner-bottom py-lg-5 py-3">
         <div class="container">
            <div class="inner-sec-shop pt-lg-4 pt-3">
               <div class="row">
               
               <%
               		int id = Integer.parseInt(request.getParameter("id")); 
               %>
               <%
               		ProductModel p = ProductDao.getProductByPid(id);
               %>
               
                  <div class="col-lg-4 single-right-left ">
                     <div class="grid images_3_of_2">
                        <div class="flexslider1">
                           <ul class="slides">
                           
                              <li data-thumb="image/<%=p.getImage()%>">
                                 <div class="thumb-image"> <img src="image/<%=p.getImage()%>" data-imagezoom="true" class="img-fluid" alt=" "> 
                                 </div>
                              </li>
                              
                           </ul>
                           <div class="clearfix"></div>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-8 single-right-left simpleCart_shelfItem">
                     <h3><%=p.getPname() %></h3>
                     <p>
                     	<span class="item_price">Rs. <%=p.getPprice() %></span>
                     </p>
                  
                     <div class="description">
                        <h5>About: <%=p.getPdesc() %></h5>
                        <%
                        	boolean flag = WishlistDao.checkProductInWishlist(p.getPid());
                        %>
                        <%
                        	if(flag == false){
                        %>
                        <form action="WishlistController" method="post">
                           <input type="hidden" name="cusid" value="<%=c.getId()%>">
                           <input type="hidden" name="pid" value="<%=p.getPid()%>">
                           <input type="submit" name="action" value="Add to Wishlist">
                        </form>
                        <%
                        	}else
                        	{
                        %>
                        <h4>Already added to Wishlist</h4>
                        <%
                        	}
                        %>
                        
                        <%
                        	boolean flag2 = CartDao.checkProductInWishlist(p.getPid());
                        %>
                        <%
                        	if(flag2 == false) {
                        %>
                        <form action="CartController" method="get">
                           <input type="hidden" name="cusid" value="<%=c.getId()%>">
                           <input type="hidden" name="pid" value="<%=p.getPid()%>">
                           <input type="hidden" name="pname" value="<%=p.getPname()%>">
                           <input type="hidden" name="pcategory" value="<%=p.getPcategory()%>">
                           <input type="hidden" name="pprice" value="<%=p.getPprice()%>">
                           <input type="submit" name="action" value="Add to Cart">
                        </form>
                        <%
                        	}else
                        	{
                        %>
                        <br>
                        <h4>Already added to Cart</h4>
                        <%
                        	}
                        %>
                     </div>
                     
                     
                     
                     
                  </div>
                  <div class="clearfix"> </div>
                  <!--/tabs-->
                  <div class="responsive_tabs">
                     <div id="horizontalTab">
                        <ul class="resp-tabs-list">
                           <li>Description</li>
                           <li>Reviews</li>
                           <li>Information</li>
                        </ul>
                        <div class="resp-tabs-container">
                           <!--/tab_one-->
                           <div class="tab1">
                              <div class="single_page">
                                 <h6>Lorem ipsum dolor sit amet</h6>
                                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie
                                    blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur adipisicing elit, sed do eiusmod tempor incididunt
                                    ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. labore et dolore
                                    magna aliqua.
                                 </p>
                                 <p class="para">Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie
                                    blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur adipisicing elit, sed do eiusmod tempor incididunt
                                    ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. labore et dolore
                                    magna aliqua.
                                 </p>
                              </div>
                           </div>
                           <!--//tab_one-->
                           <div class="tab2">
                              <div class="single_page">
                                 <div class="bootstrap-tab-text-grids">
                                    <div class="bootstrap-tab-text-grid">
                                       <div class="bootstrap-tab-text-grid-left">
                                          <img src="images/team1.jpg" alt=" " class="img-fluid">
                                       </div>
                                       <div class="bootstrap-tab-text-grid-right">
                                          <ul>
                                             <li><a href="#">Admin</a></li>
                                             <li><a href="#"><i class="fa fa-reply-all" aria-hidden="true"></i> Reply</a></li>
                                          </ul>
                                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget.Ut enim ad minima veniam,
                                             quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis
                                             autem vel eum iure reprehenderit.
                                          </p>
                                       </div>
                                       <div class="clearfix"> </div>
                                    </div>
                                    <div class="add-review">
                                       <h4>add a review</h4>
                                       <form action="#" method="post">
                                          <div class="row">
                                             <div class="col-md-6">
                                                <input type="text" name="Name" required="">
                                             </div>
                                             <div class="col-md-6">
                                                <input type="email" name="Email" required="">
                                             </div>
                                          </div>
                                          <textarea name="Message" required=""></textarea>
                                          <input type="submit" value="SEND">
                                       </form>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="tab3">
                              <div class="single_page">
                                 <h6>Teddy Bear(Blue)</h6>
                                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie
                                    blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur adipisicing elit, sed do eiusmod tempor incididunt
                                    ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. labore et dolore
                                    magna aliqua.
                                 </p>
                                 <p class="para">Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie
                                    blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur adipisicing elit, sed do eiusmod tempor incididunt
                                    ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. labore et dolore
                                    magna aliqua.
                                 </p>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!--//tabs-->
               </div>
            </div>
         </div>
      </section>
      <!--subscribe-address-->
      <section class="subscribe">
         <div class="container-fluid">
         <div class="row">
            <div class="col-lg-6 col-md-6 map-info-right px-0">
               <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3150859.767904157!2d-96.62081048651531!3d39.536794757966845!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1408111832978"> </iframe>
            </div>
            <div class="col-lg-6 col-md-6 address-w3l-right text-center">
               <div class="address-gried ">
                  <span class="far fa-map"></span>
                  <p>25478 Road St.121<br>USA New Hill
                  <p>
               </div>
               <div class="address-gried mt-3">
                  <span class="fas fa-phone-volume"></span>
                  <p> +(000)123 4565<br>+(010)123 4565</p>
               </div>
               <div class=" address-gried mt-3">
                  <span class="far fa-envelope"></span>
                  <p><a href="mailto:info@example.com">info@example1.com</a>
                     <br><a href="mailto:info@example.com">info@example2.com</a>
                  </p>
               </div>
            </div>
         </div>
		  </div>
      </section>
      <!--//subscribe-address-->
      <section class="sub-below-address py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
            <h3 class="title clr text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Get In Touch Us</h3>
            <div class="icons mt-4 text-center">
               <ul>
                  <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                  <li><a href="#"><span class="fas fa-envelope"></span></a></li>
                  <li><a href="#"><span class="fas fa-rss"></span></a></li>
                  <li><a href="#"><span class="fab fa-vk"></span></a></li>
               </ul>
               <p class="my-3">velit sagittis vehicula. Duis posuere 
                  ex in mollis iaculis. Suspendisse tincidunt
                  velit sagittis vehicula. Duis posuere 
                  velit sagittis vehicula. Duis posuere 
               </p>
            </div>
            <div class="email-sub-agile">
               <form action="#" method="post">
                  <div class="form-group sub-info-mail">
                     <input type="email" class="form-control email-sub-agile" placeholder="Email">
                  </div>
                  <div class="text-center">
                     <button type="submit" class="btn subscrib-btnn">Subscribe</button>
                  </div>
               </form>
            </div>
         </div>
      </section>

<%@include file="footer.jsp" %>