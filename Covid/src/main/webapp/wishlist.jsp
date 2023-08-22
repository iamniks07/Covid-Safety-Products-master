<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
        <h2>Wishlist Page</h2>
        <ol class="breadcrumb">
          <li><a href="./home.jsp">Home</a></li>                   
          <li class="active">Wishlist</li>
        </ol>
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
           <div class="cart-view-table aa-wishlist-table">
             <form action="./wishlist.jsp">
               <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
                        <th></th>
                        <th></th>
                        <th>Product</th>
                        <th>Price</th>
                        <th>Stock Status</th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><a class="remove" href="./wishlist.jsp"><fa class="fa fa-close"></fa></a></td>
                        <td><a href="./wishlist.jsp"><img src="./assets/wishlist1_files/polo-shirt-1.png" alt="img"></a></td>
                        <td><a class="aa-cart-title" href="./wishlist.jsp">Polo T-Shirt</a></td>
                        <td>$250</td>
                        <td>In Stock</td>
                        <td><a href="./wishlist.jsp" class="aa-add-to-cart-btn">Add To Cart</a></td>
                      </tr>
                      <tr>
                        <td><a class="remove" href="./wishlist.jsp"><fa class="fa fa-close"></fa></a></td>
                        <td><a href="./wishlist.jsp"><img src="./assets/wishlist1_files/polo-shirt-2.png" alt="img"></a></td>
                        <td><a class="aa-cart-title" href="./wishlist.jsp">Polo T-Shirt</a></td>
                        <td>$150</td>
                        <td>In Stock</td>
                        <td><a href="./wishlist.jsp" class="aa-add-to-cart-btn">Add To Cart</a></td>
                      </tr>
                      <tr>
                        <td><a class="remove" href="./wishlist.jsp"><fa class="fa fa-close"></fa></a></td>
                        <td><a href="./wishlist.jsp"><img src="./assets/wishlist1_files/polo-shirt-3.png" alt="img"></a></td>
                        <td><a class="aa-cart-title" href="./wishlist.jsp">Polo T-Shirt</a></td>
                        <td>$50</td>
                        <td>In Stock</td>
                        <td><a href="./wishlist.jsp" class="aa-add-to-cart-btn">Add To Cart</a></td>
                      </tr>                     
                      </tbody>
                  </table>
                </div>
             </form>             
           </div>
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->


  <!-- Subscribe section -->
  <section id="aa-subscribe">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          
        </div>
      </div>
    </div>
  </section>
  <!-- / Subscribe section -->

 <%@include file="./common/footer.jsp" %> 
</body>
</html>