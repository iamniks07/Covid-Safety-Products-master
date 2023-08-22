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
		 window.history.forword(1);
</script>
</head>

<body>

<%@include file="./common/middle1.jsp" %>
              
<%

%>
<table>
<thead>                                              
<%--                                              

int total=0;
int sno=0;
try
{
   Connection con=ConnectionProvider.getCon();
   Statement st=con.createStatement();
   ResultSet rs1=st.executeQuery("select sum(total) from cart where email='"+email+"' and address is NULL");
   while(rs1.next())
   {
     total=rs1.getInt(1);
   }
   

	--%>
	
	<tr>
	<th scope="col"><a href="cart1.jsp"><i class="fas fa-arrow-circle-left">back</i></a></th>
	<th scope="col" style="background-color:yellow;">Total:<i class="fas fa-inr"></i><%-- out.println(total); --%></th>
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
	 <%--
            ResultSet rs=st.executeQuery("select *from product inner join cart on product.id=cart.product_id and cart.email='"+email+"' and cart.address is NULL");
             while(rs.next())
             {
             --%>
              <tr>
                        <%--sno=sno+1; --%>
                        <td><%--out.println(sno); --%></td>
                        <td><%--=rs.getString(2) --%></td>
                        <td><i class="fa fa-inr" ></i> <%--=rs.getString(4) --%></td>
                        <td><i class="fa fa-plus-circle" ></i> <%--=rs.getString(8) --%></td>
                        <td><a href=""><i class="fa fa-inr"></i></a> <%--=rs.getString(10) --%></td>
                      </tr>
              <%--
             }
             ResultSet rs2=st.executeQuery("select *from user where email='"+email+"'");
             while(rs2.next())
             {
              --%>
	</tbody>
	
</table>
<section id="aa-catg-head-banner">
    <img src="./assets/covimages/back2.jpg" height="250" width="1900">
    <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Checkout Page</h2>
        <ol class="breadcrumb">
          <li><a href="./home1.jsp">Home</a></li>                   
          <li class="active">Checkout</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
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
                   
                    <!-- Billing Details -->
                    <div class="panel panel-default aa-checkout-billaddress">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="file:///F:/covid%20safety%20products/MarkUps-dailyShop/dailyShop/checkout1.html#collapseThree">
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



<%--
}
}
catch(Exception e)
{
	out.println(e);
}
--%>



 <%@include file="./common/footer.jsp" %>
    
</body>
</html>

