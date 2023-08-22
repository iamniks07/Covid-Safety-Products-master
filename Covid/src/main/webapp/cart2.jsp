<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Daily Shop | Home</title>
    
    
    <%@include file="./common/header.jsp" %>
 </style></head>
  <body> 
   <%@include file="./common/middle1.jsp" %>
  
<!-- / menu -->  
 
  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
   <img src="./assets/covimages/back2.jpg" height="250" width="1900">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Cart Page</h2> 
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->

 <!-- Cart view section -->
 
 <section id="cart-view">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="cart-view-area">
           <div class="cart-view-table">
             <form action="checkout2.jsp">
              
               <div class="table-responsive">

                  <table class="table">
                  	<%
                  	int total=0;
                    int sno=0;
                    String msg = request.getParameter("msg");
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
                  	<thead>
                  		<h4 align="center"><b>Cart Details</b></h4>
                      <tr>
                        <th>S.No</th>
                        <th>Product</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                    <%
                    	ResultSet rs1 = st.executeQuery("select * from product inner join cart on product.p_id=cart.product_id and cart.email='"+email+"'");
                    	while(rs1.next())
                    	{
                    		 
                    %>
                      <tr>
                        <%sno=sno+1; %>
                        <td><%out.println(sno); %></td>
                        <td><%=rs1.getString("p_name") %></td>
                        <td> &#8377 <%=rs1.getInt("price")%></td>
                        <td><%=rs1.getInt("quantity")%></td>
                        <td> &#8377 <%=rs1.getInt("total") %></td>
                       	<td><a class="remove" href="removeFromCart.jsp?id=<%=rs1.getString("product_id")%>">remove<i class="fa fa-close"></i></a></td>
                      </tr>
                  <%} %>    
                 </tbody>
                 </table>
                 <table class="table">
                 	<thead>
                    		<h4 align="center"><b>Cart Totals</b></h4>
                            <tr>
                              <th>Total : &#8377 <%out.println(total); %></th>   
                            </tr>
                        	         
                 	</thead>
                 	
				</table>
				<%
				if(total > 0){ %>
					<a href="check2.jsp" class="aa-cart-view-btn" >Proceed to Checkout</a>
				<% 	
                  	}
				if("removed".equals(msg)){ %>
					<script type="text/javascript">
     					alert("Product removed from cart!!");
     				</script>
				<%	
					}
                  }
                catch(Exception e)
                {
					out.println(e);
                }
				%>
                      
                </div>
             </form>
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