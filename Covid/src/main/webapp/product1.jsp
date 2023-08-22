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

<%@include file="./common/middle.jsp" %>
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

  <!-- product category -->
  <div class="row">
  	<div class="col-md-2">
  		<div class="list-group">
  			<a href="#" class="list-group-item list-group-item-action active" aria-current="true">
    			All Categories
  			</a>
  		</div>
  		
  	</div>
  	<div class="col-md-8">
  		<h1>Products</h1>
  	</div>
  </div>
  
  <%@include file="./common/footer.jsp" %>
</body>
</html>