
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<%@include file="./head.jsp" %>
<style type="text/css">
body{
	background-color: #ADD8E6;
}

table{
	background-color: white;
	color: black; 
}
</style>
</head>
<body>

<%@include file="../common/navbar.jsp" %>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
int user=0;
int product=0;
int order=0;
try
{
	Connection con = ConnectionProvider.getCon();
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select count(user_id) from user");
	while(rs.next())
	{	user = rs.getInt(1);	}
	ResultSet rs1 = stmt.executeQuery("select count(p_id) from product");
	while(rs1.next())
	{	product = rs1.getInt(1);	}
	ResultSet rs2=stmt.executeQuery("select * from cart inner join product where cart.product_id=product.p_id and cart.status='delivered'");
	while(rs2.next())
	{	order += 1; }
}
catch(Exception e)
{
	//out.println(e);
}

%>
	<div class="container" style="border: 2px solid blue">
		<br>
		<div class="row mt-3">
			<div class="col-md-4">
				<div class="card" style="border: 2px solid black">
					<div class="card-body text-center">
						<h1><%out.println(user); %></h1>
						<h1><a href="allUser.jsp">All Users</a></h1>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card" style="border: 2px solid black">
					<div class="card-body text-center">
						<h1><%out.println(product); %></h1>
						<h1><a href="EditProduct.jsp">All Products</a></h1>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card" style="border: 2px solid black">
					<div class="card-body text-center" style="background-color: solid blue">
						<h1><%out.println(order); %></h1>
						<h1><a href="deliveredOrder.jsp">All Orders</a></h1>
					</div>
				</div>
			</div>
		</div>
		<br>
		<div class="row mt-3">
			<div class="col-md-4">
				<div class="card" style="border: 2px solid black">
					<div class="card-body text-center">
						<h1></h1>
						<h1><a href="addNewProduct.jsp">Add New Product</a></h1>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card" style="border: 2px solid black">
					<div class="card-body text-center">
						<h1></h1>
						<h1><a href="orderReceived.jsp">Orders Received</a></h1>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card" style="border: 2px solid black">
					<div class="card-body text-center">
						<h1></h1>
						<h1><a href="cancelOrder.jsp">Cancel Orders</a></h1>
					</div>
				</div>
			</div>
		</div><br>
	</div>
</body>
</html>

