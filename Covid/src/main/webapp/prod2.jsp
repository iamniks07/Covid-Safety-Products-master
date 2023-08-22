<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Daily Shop | Products</title>
    
    <%@include file="./common/header.jsp" %>
    
</style></head>
<body>

<%@include file="./common/middle1.jsp" %>
  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
   <img src="./assets/covimages/back2.jpg" height="250" width="1900">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Products</h2>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%
String msg = request.getParameter("msg");
if("added".equals(msg))
{ %>
	<h3 class="alert" align="center">Product Added Successfully!</h3>
<%} %>
<%
if("exist".equals(msg))
{
%>
	<h3 class="alert" align="center">Product Already Exist in your cart! Quantity increased!</h3>
<%} %>	
<% 
if("invalid".equals(msg))
{
%>
	<h3 class="alert" align="center">Login First!!</h3>
<%} %>
  <!-- product category -->
  <section id="aa-product-category">
    <div class="container">
      <div class="row">
        <div class="col-lg-9 col-md-9 col-sm-8 col-md-push-3">
          <div class="aa-product-catg-content">
            <div class="aa-product-catg-head">
              
            </div>
            <div class="aa-product-catg-body">
            <%
            	try{
            		Connection con = ConnectionProvider.getCon();
            		Statement st = con.createStatement();
            		ResultSet rs = st.executeQuery("select * from product");
            		while(rs.next())
            		{
            	
            %>
              <ul class="aa-product-catg">
                <!-- start single product item -->
                <li>
                  <figure>
                    <a class="aa-product-img" href="./product-detail.jsp"><img src="./assets/covimages/<%=rs.getString(5) %>" height="150" width="150"></a>
                    <a class="aa-add-card-btn" href="./addCartAction2.jsp?id=<%=rs.getString(1) %>"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                    <h4 class="aa-product-title"><a href="#"><%=rs.getString(2) %></a></h4>
                    <span class="aa-product-price">Rs.<%=rs.getInt(4) %></span>
                    <p class="aa-product-descrip"></p><br>
                    <a class="aa-product-content" href="#"><span class="fa fa-heart-o"></span>Add To Wishlist</a>
                  </figure>                         
                </li>
                <%--<!-- start single product item -->
                <li>
                  <figure>
                    <a class="aa-product-img" href="#"><img src="./assets/covimages/mask2.jpg" height="150" width="150"></a>
                    <a class="aa-add-card-btn"href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                    <figcaption>
                      <h4 class="aa-product-title"><a href="#">Homemade</a></h4>
                      <span class="aa-product-price">Rs.50</span>
                       <p class="aa-product-descrip"></p><br>
                       <a class="aa-product-content" href="#"><span class="fa fa-heart-o"></span>Add To Wishlist</a>
                    </figcaption>
                  </figure>                         
                  
                </li>--%>
              </ul>
              <%
            		}
            	}
                catch(Exception e)
    	        {
                	out.println(e);
    	        }
              %>
                 
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-4 col-md-pull-9">
          <aside class="aa-sidebar">
            <!-- single sidebar -->
            <div class="aa-sidebar-widget">
              <h3>Category</h3>
              <ul class="aa-catg-nav">
                <li><a href="#">MASK</a></li>
                <li><a href="#">SANITIZER</a></li>
                <li><a href="#">PPE</a></li>
                <li><a href="#">THERMOMETER</a></li>
                <li><a href="#">OXIMETER</a></li>
              </ul>
            </div>
          </aside>
        </div>
      </div>
    </div>
    </section>
  <%@include file="./common/footer.jsp" %>
</body>
</html>