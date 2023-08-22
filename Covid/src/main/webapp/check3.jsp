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
 <form action="addPaymentForAction.jsp">
 <%
 try
{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
    ResultSet rs2=st.executeQuery("select *from user where email='"+email+"'");
    while(rs2.next())
   {
   %>
 
         
            <div class="row">
              <div class="col-md-8">
                <div class="checkout-left">
                  <div class="panel-group" id="accordion">
                    
                    <!-- Billing Details -->
                    <div class="panel panel-default aa-checkout-billaddress">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="./check2.jspcollapseThree">
                            Billing Details
                          </a>
                        </h4>
                      </div>
                      <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                          <div class="row">
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="text" placeholder="Name* value="<%=rs2.getString(2)%>">
                              </div>                             
                            </div>
                                       
                         
                          <div class="row">
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="email" placeholder="Email Address* value="<%=rs2.getString(3)%>">
                              </div>                             
                            </div>
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="tel" placeholder="Phone* value="<%=rs2.getString(6)%>">
                              </div>
                            </div>
                          </div> 
                          <div class="row">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                                <input type="text" placeholder="Address* value="<%=rs2.getString(4)%>">
                              </div>                             
                            </div>                            
                          </div>   
                          <div class="row">
                             <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="text" placeholder="City / Town* value="<%=rs2.getString(7)%>">
                              </div>
                            </div>
                          </div>   
                          <div class="row">
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="text" placeholder="state*  value="<%=rs2.getString(8)%>">
                              </div>                             
                            </div>
                           </div>
                           <div class="col-md-12">
                            <div class="aa-checkout-single-bill">
                              <input type="text" placeholder="Country* value="<%=rs2.getString(9)%>">
                            </div>                             
                          </div>       
                      	
                      </div>
                    </div>
                    </div>
                  </div>
                </div>
              </div>
   <%
    }
    %>
              <div class="col-md-4">
                <div class="checkout-right">
                  <h4>Order Summary</h4>
                  <div class="aa-order-summary-area">
                    <table class="table table-responsive">
                      <thead>
                      <% 
                      		int total=0;
					 	            	int sno=0;
					 	
					    		ResultSet rs=st.executeQuery("select sum(total) from cart where email='"+email+"'");
					    		while(rs.next())
					    		{
					      			total=rs.getInt(1);
					    		}
					   %>
					    	
                        <tr>
                          <th>Product</th>
                          <th>Total</th>
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
                          <td>Rs.<%=rs1.getInt("price")%></td>
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
                  <h4>Payment Method</h4>
                  <div class="aa-payment-method">                    
                    <label for="cashdelivery"><input type="radio" id="cashdelivery" name="optionsRadios"> Cash on Delivery </label>
                    <label for="wallet"><input type="radio" id="wallet" name="optionsRadios" checked=""> Via Wallet </label>
					<label for="upi"><input type="radio" id="upi" name="optionsRadios" checked=""> Via UPI </label>                           
                  </div>
                  <a href="addPaymentForAction.jsp" class="aa-cart-view-btn" >Place Order</a>
                  
                </div>
              </div>
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