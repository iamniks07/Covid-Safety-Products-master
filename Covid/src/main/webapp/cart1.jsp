<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- saved from url=(0078)file:///F:/covid%20safety%20products/MarkUps-dailyShop/dailyShop/homepage.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Daily Shop | Home</title>
    
    <%@include file="./common/header.jsp" %>
</style></head>
  <body> 
   <%@include file="./common/middle.jsp" %>
  
<!-- / menu -->  
 
  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
   <img src="./assets/covimages/back2.jpg" height="250" width="1900">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Cart</h2>
        <ol class="breadcrumb">
          <li><a href="./home.jsp">Home</a></li>         
          <li class="active">Cart</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->

 <!-- Cart view section -->
 <%@page import="project.ConnectionProvider" %>
 <%@page import="java.sql.*" %>
 <section id="cart-view">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="cart-view-area">
           <div class="cart-view-table">
               <h4>Cart Totals</h4>
               <table class="aa-totals-table">
               <%
                        
                        int total=0;
                        int sno=0;
                        try
                        {
                        	String email = session.getAttribute("email").toString();
                           	Connection con=ConnectionProvider.getCon();
                           	Statement st=con.createStatement();
                           	ResultSet rs=st.executeQuery("select sum(total) from cart where email='"+email+"'");
                           	while(rs.next())
                           	{
                           	  total=rs.getInt(4);
                           	}
                           	ResultSet rs1 = st.executeQuery("select * from cart where email='"+email+"'");
                           	while(rs1.next())
                           	{
                        %>
                 <tbody>
                   
                   <tr>
                     <th>SNo</th>
                     <th>Product</th>
                     <th>Price</th>
                     <th>Quantity</th>
                     <th>Total</th>
                   </tr>
                   <tr>
                        <%sno=sno+1; %>
                        <td><%out.println(sno); %></td>
                        <td><a class="remove" href="removeFromCart.jsp?id=<%=rs1.getString(1)%>">remove<i class="fa fa-close"></i></a></td>
                        <td><%=rs1.getInt(3) %></td>
                        <td><i class="fa fa-inr" ></i> <%=rs1.getInt(2) %></td>
                        <td><i class="fa fa-plus-circle" ></i> <%=rs1.getInt(4) %></td>
                       <%--<!-- <td><a href=""><i class="fa fa-plus-circle" ></i></a> <%=rs.getString(8) %> <a href=""> <i class="fas fa-minus-circle"></i></a></td>-->
                        <td><a href=""><i class="fa fa-inr"></i></a> <%=rs.getString(10) %></td>--%>
                   </tr>
                   <%}
                   if(total > 0){%> <a href="addPaymentForOrder.jsp" class="aa-cart-view-btn">Proceed to Checkout</a><%} 
                      
                  }
                  catch(Exception e)
                  {
						out.println("Login First");
                  } %>
                 </tbody>
               </table>
              
               
             </div>  
           </div>
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->

 <%@include file="./common/footer.jsp" %>
  </body>
</html>