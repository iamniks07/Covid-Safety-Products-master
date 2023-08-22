<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="../common/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



</head>
<body>
<center><h2><b> COVISAFE</b></h2></center>
<header id="aa-header">
    <!-- start header top  -->
    <div class="aa-header-top">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-top-area">
              <!-- start header top left -->
              <div class="aa-header-top-right">
                <ul class="aa-head-top-nav-right">
                <%
                	String email = session.getAttribute("email").toString();
                %>
                  <li><%out.println(email); %></li>
                  <li><a href="./addNewProduct.jsp">Add New Product</a></li>
                  <li class="hidden-xs"><a href="EditProduct.jsp">All Products and Edit Products</a></li>
                  <li class="hidden-xs"><a href="orderReceived.jsp">Orders Received</a></li>
                  <li><a href="cancelOrder.jsp">Cancel Orders</li>
                  <li><a href="deliveredOrder.jsp">All Orders</li>
                  <li><a href="allUser.jsp">All Users</li>
                  <li><a href="./login.jsp">Login</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</header> 
<br>

<%-- <div class="topnav sticky">
<%String email=session.getAttribute("email").toString();%>
 
 <a href="./addNewProduct.jsp">Add New Product<i class="fas fa-plus-square"></i></a>
 <a href="EditProduct.jsp">All Products and Edit Products<i class="fas fa-plus-square"></i></a>
  <a href="orderReceived.jsp">Orders Received<i class="fas fa-plus-square"></i></a>
   <a href="cancelOrder.jsp">Cancel Orders<i class="fas fa-plus-square"></i></a>
    <a href="deliveredOrder.jsp">All Orders<i class="fas fa-plus-square"></i></a>
     <a href="allUser.jsp">All Users<i class="fas fa-plus-square"></i></a>
      <a href="../Logout.jsp">Logout<i class="fas fa-plus-square"></i></a>
</div>
<br>--%>



</body>
</html>