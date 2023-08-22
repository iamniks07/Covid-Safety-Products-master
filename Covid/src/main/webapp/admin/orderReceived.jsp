<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../common/header.jsp" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>order</title>
<link rel="stylesheet" href"">
<style>
.th-style
{
width:25%;
}
body{
	background-color: #ADD8E6;
}
.back
{
color:white;
}
table{
	background-color: white;
	color: black; 
}
</style>
</head>
<body>

<h1 align="center">Order Received</h1>
<h2 align="center"><a class="back" href="adminHome.jsp">Home</a></h2></h2>

<table border=1 align="center">
<tr>
<th scope="col">Mobile Number</th> 
<th scope="col">Product Name</th> 
<th scope="col">Quantity</th> 
<th scope="col"><i classs="fa fa-inr"></i>Sub Total</th> 
<th scope="col">Address</th> 
 <th scope="col"><i classs="fas fa-window-close"></i>Cancel Order</th> 
 <th scope="col"><i classs="fas fa-dolly"></i>Order Delivered</th> 
 </tr>
 
 <%
 String email = session.getAttribute("email").toString();
 try{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from cart inner join product where cart.product_id=product.p_id and cart.status='bill' or cart.status='null'");
		while(rs.next())
		{
 				
 %>
 <tr>
 	<td><%=rs.getString("mob_number") %></td>
    <td><%=rs.getString(2) %></td>
    <td><%=rs.getString(3) %></td>
    <td><i classs="fa fa-inr"><%=rs.getString(5) %></td>
    <td><%=rs.getString(6) %></td>
    <td><a href="cancelOrderAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>"><i classs="fas fa-window-close"></i>Cancel Order</a></td> 
    <td><a href="deliveredOrderAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>"><i classs="fas fa-dolly"></i>Order Delivered</a></td> 
 
 </tr>
 <%
 }
 }
 catch(Exception e)
 {}
 %>
</table>

</body>
</html>