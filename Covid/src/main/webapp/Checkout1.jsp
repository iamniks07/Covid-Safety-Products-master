<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Daily Shop | Home</title>
    
    <%@include file="./common/header.jsp" %>
<script>
	if(window.history.forward(1)!=null)
		 window.histoey.forword(1);
</script>
</head>

<body>

<%@include file="./common/middle1.jsp" %>              
              
<table>
<thead>                                              
<%                                               
//String email=session.getAttribute("email").toString();
int total=0;
int sno=0;
try
{
   Connection con=ConnectionProvider.getCon();
   Statement st=con.createStatement();
   ResultSet rs1=st.executeQuery("select sum(total) from cart where email='"+email+"'");
   while(rs1.next())
   {
     total=rs1.getInt(1);
   }
   

	%>
	
	<tr>
	<th scope="col"><a href="cart1.jsp"><i class="fas fa-arrow-circle-left">back</i></a></th>
	<th scope="col" style="background-color:yellow;">Total:<i class="fas fa-inr"></i><% out.println(total); %></th>
	</tr>
	</thead>
	<thead>
	<tr>
	<th scope="col">S.No</th>
	<th scope="col">Product Name</th>
	<th scope="col">Category</th>
	<th scope="col"><i class="fa fa-inr"></i>Price</th>
	<th scope="col">Quantity</th>
	<th scope="col">Sub Total</th>
	</tr>
	</thead>
	<tbody>
	 <%
            ResultSet rs=st.executeQuery("select *from product inner join cart on product.p_id=cart.product_id and cart.email='"+email+"'");
             while(rs.next())
             {
             %>
              <tr>
                        <%sno=sno+1; %>
                        <td><%out.println(sno); %></td>
                        <td><%=rs.getString(2) %></td>
                        <td><i class="fa fa-inr" ></i> <%=rs.getString(4) %></td>
                        <td><i class="fa fa-plus-circle" ></i> <%=rs.getString(8) %></td>
                        <td><a href=""><i class="fa fa-inr"></i></a> <%=rs.getString(10) %></td>
                      </tr>
              <%
             }
             ResultSet rs2=st.executeQuery("select *from user where email='"+email+"'");
             while(rs2.next())
             {
              %>
	</tbody>
	
</table>
<section id="checkout">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="checkout-area">
          <form action="addPaymentForAction.jsp" method="post">
            <div class="row">
              <div class="col-md-8">             
                <div class="checkout-left">
                  <div class="panel-group" id="accordion">
                   
                    
                    <!-- Login section -->
                    <div class="panel panel-default aa-checkout-login">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                         <!--  <a data-toggle="collapse" data-parent="#accordion" href="file:///F:/covid%20safety%20products/MarkUps-dailyShop/dailyShop/checkout1.html#collapseTwo">-->
                            Client Login 
                          </a>
                        </h4>
                      </div>
                      <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">

                          <input type="text" placeholder="Username or email">
                          <input type="password" placeholder="Password">
                          <button type="submit" class="aa-browse-btn">Login</button>
                          <label for="rememberme"><input type="checkbox" id="rememberme"> Remember me </label>
                         
                        </div>
                      </div>
                    </div>
                    <!-- Billing Details -->
                    <div class="panel panel-default aa-checkout-billaddress">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                        <!--    <a data-toggle="collapse" data-parent="#accordion" href="file:///F:/covid%20safety%20products/MarkUps-dailyShop/dailyShop/checkout1.html#collapseThree">-->
                            Billing Details
                          </a>
                        </h4>
                      </div>
                      <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                          <div class="row">
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="text" placeholder="First Name*">
                              </div>                             
                            </div>
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="text" placeholder="Last Name*">
                              </div>
                            </div>
                          </div> 
                                                
                         
                          <div class="row">
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="email" placeholder="Email Address*">
                              </div>                             
                            </div>
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="tel" placeholder="Phone*">
                              </div>
                            </div>
                          </div> 
                          <div class="row">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                                <textarea cols="8" rows="3">Address*</textarea>
                              </div>                             
                            </div>                            
                          </div>   
                          <div class="row">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                                <select>
                                  <option value="0">Select Your Country</option>
                                  <option value="1">Australia</option>
                                  <option value="2">Afganistan</option>
                                  <option value="3">Bangladesh</option>
                                  <option value="4">Belgium</option>
                                  <option value="5">Brazil</option>
                                  <option value="6">Canada</option>
                                  <option value="7">China</option>
                                  <option value="8">Denmark</option>
                                  <option value="9">Egypt</option>
                                  <option value="10">India</option>
                                  <option value="11">Iran</option>
                                  <option value="12">Israel</option>
                                  <option value="13">Mexico</option>
                                  <option value="14">UAE</option>
                                  <option value="15">UK</option>
                                  <option value="16">USA</option>
                                </select>
                              </div>                             
                            </div>                            
                          </div>
                             <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="text" placeholder="City / Town*">
                              </div>
                            </div>
                          </div>   
                          <div class="row">
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="text" placeholder="state*">
                              </div>                             
                            </div>
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="text" placeholder="Postcode / ZIP*">
                              </div>
                            </div>
                          </div>                                    
                        </div>
                      </div>
                    </div>
                   
                <h4>Payment Method</h4>
                  <div class="aa-payment-method">                    
                    <label for="cashdelivery"><input type="radio" id="cashdelivery" name="optionsRadios"> Cash on Delivery </label>
                    <label for="paypal"><input type="radio" id="paypal" name="optionsRadios" checked=""> Via Paypal </label>
                    <img src="https://www.paypalobjects.com/webstatic/mktg/logo/AM_mc_vs_dc_ae.jpg" border="0" alt="PayPal Acceptance Mark">    
                    <input type="submit" value="Place Order" class="aa-browse-btn">                
                  </div>
                </div>
              </div>
            </div>
          </form>
         </div>
       </div>
     </div>
   </div>
 </section>



<%
}
}
catch(Exception e)
{
	out.println(e);
}
%>



 <footer id="aa-footer">
    <!-- footer bottom -->
    <div class="aa-footer-top">
     <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-top-area">
            <div class="row">
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <h3>Main Menu</h3>
                  <ul class="aa-footer-nav">
                    <li><a href="file:///F:/covid%20safety%20products/MarkUps-dailyShop/dailyShop/homepage2.html#">Home</a></li>
                   
                    <li><a href="file:///F:/covid%20safety%20products/MarkUps-dailyShop/dailyShop/product.html#">Our Products</a></li>
                    <li><a href="file:///F:/covid%20safety%20products/MarkUps-dailyShop/dailyShop/contact1.html#">About Us</a></li>
                    <li><a href="file:///F:/covid%20safety%20products/MarkUps-dailyShop/dailyShop/contact1.html#">Contact Us</a></li>
                    <li><a href="file:///F:/covid%20safety%20products/MarkUps-dailyShop/dailyShop/suppliers.html#">Suppliers</a></li>
                  </ul>
                </div>
              </div>

              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Contact Us</h3>
                    <address>
                      <p>Agarwal Medicals , railway station road, dondaicha.</p>
                      <p><span class="fa fa-phone">9421481303</span></p>
                      <p><span class="fa fa-envelope"></span>covisafe@gmail.com</p>
                    </address>
                   
    <!-- footer-bottom -->
    <div class="aa-footer-bottom">
      <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-bottom-area">
            
            <div class="aa-footer-payment">
            </div>
          </div>
        </div>
      </div>
      </div>
    </div>
  </footer>



  <!-- / footer -->
  <!-- Login Modal -->  
  <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">                      
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h4>Login or Register</h4>
          <form class="aa-login-form" action="file:///F:/covid%20safety%20products/MarkUps-dailyShop/dailyShop/checkout1.html">
            <label for="">Username or Email address<span>*</span></label>
            <input type="text" placeholder="Username or email">
            <label for="">Password<span>*</span></label>
            <input type="password" placeholder="Password">
            <button class="aa-browse-btn" type="submit">Login</button>
            <label for="rememberme" class="rememberme"><input type="checkbox" id="rememberme"> Remember me </label>
            <p class="aa-lost-password"><a href="file:///F:/covid%20safety%20products/MarkUps-dailyShop/dailyShop/checkout1.html#">Lost your password?</a></p>
            <div class="aa-register-now">
              Don't have an account?<a href="file:///F:/covid%20safety%20products/MarkUps-dailyShop/dailyShop/account11.html">Register now!</a>
            </div>
          </form>
        </div>                        
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>


    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="./checkout1_files/bootstrap.js.download"></script>  
    <!-- SmartMenus jQuery plugin -->
    <script type="text/javascript" src="./checkout1_files/jquery.smartmenus.js.download"></script>
    <!-- SmartMenus jQuery Bootstrap Addon -->
    <script type="text/javascript" src="./checkout1_files/jquery.smartmenus.bootstrap.js.download"></script>  
    <!-- To Slider JS -->
    <script src="./checkout1_files/sequence.js.download"></script>
    <script src="./checkout1_files/sequence-theme.modern-slide-in.js.download"></script>  
    <!-- Product view slider -->
    <script type="text/javascript" src="./checkout1_files/jquery.simpleGallery.js.download"></script>
    <script type="text/javascript" src="./checkout1_files/jquery.simpleLens.js.download"></script>
    <!-- slick slider -->
    <script type="text/javascript" src="./checkout1_files/slick.js.download"></script>
    <!-- Price picker slider -->
    <script type="text/javascript" src="./checkout1_files/nouislider.js.download"></script>
    <!-- Custom js -->
    <script src="./checkout1_files/custom.js.download"></script> 
    
</body>
</html>

