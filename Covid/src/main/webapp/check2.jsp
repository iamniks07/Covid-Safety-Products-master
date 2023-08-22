<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Daily Shop | Home</title>
    
    <%@include file="./common/header.jsp" %>
    
<%-- <script>
	if(window.history.forward(1)!=null)
		 window.history.forword(1);
</script>--%>
</head>
<body>
<%@include file="./common/middle1.jsp" %>
  <!-- / menu -->  
 
  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
    <img src="./assets/covimages/back2.jpg" height="250" width="1900">
    <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Checkout Page</h2>
        <ol class="breadcrumb">
          <li><a href="./home.jsp">Home</a></li>                   
          <li class="active">Checkout</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->

 <!-- Cart view section -->
 <section id="checkout">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="checkout-area">
          <form action="./addPaymentForAction.jsp">
            <div class="row">
              <div class="col-md-8">
                <div class="checkout-left">
                  <div class="panel-group" id="accordion">
                    
                    <!-- Billing Details -->
                    <div class="panel panel-default aa-checkout-billaddress">
                      <div class="panel-heading">
                        <h4 class="panel-title"><b>
                          <a data-toggle="collapse" data-parent="#accordion" href="./check2.jspcollapseThree">
                            Billing Details
                          </a></b>
                          
                        </h4>
                      </div>
                      <div class="panel-body">
                      	<h3>Please feel all details!!</h3>
                          <div class="row">
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                              	<label>Name</label>
                                <input type="text" placeholder="Enter Name" name="name" required>
                              </div>                             
                            </div>
                    	</div>
                    	<div class="row">
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                              	<label>Email</label>
                                <input type="email" placeholder="Enter Email Address" name="email" required>
                              </div>                             
                            </div>
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                              	<label>Phone</label>
                                <input type="number" placeholder="Enter Phone Number" name="number" required>
                              </div>
                            </div>
                        </div> 
                        <div class="row">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                              	<label>Address</label>
                                <input type="text" placeholder="Enter Address" name="address" required>
                              </div>                             
                            </div>                            
                          </div>   
                          <div class="row">
                             <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                              	<label>City / Town</label>
                                <input type="text" placeholder="Enter City / Town" name="city" required>
                              </div>
                            </div>
                          </div>   
                          <div class="row">
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                              	<label>State</label>
                                <input type="text" placeholder="Enter state" name="state" required>
                              </div>                             
                            </div>
                           </div>
                          <div class="row">
                           <div class="col-md-12">
                            <div class="aa-checkout-single-bill">
                            	<label>Country</label>
                              	<input type="text" placeholder="Enter Country" name="country" required>
                            </div>                             
                          </div> 
                        </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>  
              <div class="col-md-4">
                <div class="checkout-right">
                  <h4><b>Order Summary</b></h4>
                  <div class="aa-order-summary-area">
                    <table class="table table-responsive">
                      <thead>
                      <% 
                      		int total=0;
					 		int sno=0;
					 		try
					 		{
					    		Connection con=ConnectionProvider.getCon();
					    		Statement st=con.createStatement();
					    		ResultSet rs=st.executeQuery("select sum(total) from cart where email='"+email+"'");
					    		while(rs.next())
					    		{
					      			total=rs.getInt(1);
					    		}
					   %>
					    	
                        <tr>
                          <th>Product</th>
                          <th>Sub Total</th>
                        </tr>
                      </thead>
                      <tbody>
     					<%                                              
					
							ResultSet rs1 = st.executeQuery("select * from product inner join cart on product.p_id=cart.product_id and cart.email='"+email+"'");
							while(rs1.next())
							{
						%>
                        <tr>
                          <td><%=rs1.getString("p_name") %><strong> x<%=rs1.getInt("quantity") %></strong></td>
                          <td>Rs.<%=rs1.getInt("total")%></td>
                        </tr>
                        <%} %>
                      </tbody>
                      <tfoot>
                         <tr>
                          <th>Total</th>
                          <td>Rs.<%out.println(total); %></td>
                        </tr>
                      </tfoot>
                    </table>
                  </div>
                  <%
					 }
					 catch(Exception e)
					 {
						 out.println(e);
					 }
                  %>
                  <h4><b>Payment Method</b></h4>
                  <div class="aa-payment-method">                    
                    <label for="cashdelivery"><input type="radio" id="cashdelivery" name="paymentMethod" checked> Cash on Delivery </label>
                    <label for="wallet"><input type="radio" id="wallet" name="paymentMethod" > Via Wallet </label>
					<label for="upi"><input type="radio" id="upi" name="paymentMethod" > Via UPI </label>                           
                  </div>
                  
                </div>
              </div>
              
            </div>
            <div>
              	<button class="aa-cart-view-btn" >Place Order</button>
              </div>
          </form>
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->


  <%@include file="./common/footer.jsp" %> 
</body>
</html>