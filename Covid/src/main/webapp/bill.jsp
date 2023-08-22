<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./assets/homepage2_files/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>bill</title>
<style type="text/css">
body{
	background-color: #ADD8E6;
}

</style>
</head>
<body>
<%
	String email=session.getAttribute("email").toString();
try
{
	int total=0;
	int sno=0;
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select sum(total) from cart where email='"+email+"'");
	while(rs.next())
	{
		total=rs.getInt(1);
	}
	ResultSet rs2=st.executeQuery("select *from user inner join cart on user.email=cart.email and cart.email='"+email+"'");
	while(rs2.next())
	{
		
%>
<h3>Online shopping bill</h3>
<hr>
<div class="left-div"><h3>Name:  <%=rs2.getString("name") %></h3></div>
<div class="right-di-right"><h3>Email:  <%=rs2.getString("email") %></h3></div>
<div class="right-div-right"><h3>Payment Method:  Cash on Delivery</h3></div>
<%--<div class="right-div"><h3>Mobile Number:  <%=rs2.getInt("phone") %></h3></div>
<div class="left-div"><h3>Order date:  <%=rs2.getString(21) %></h3></div>
<div class="right-div-right"><h3>Payment Method:  <%=rs2.getString(22) %></h3></div>
<div class="right-div"><h3>Expected Delivery:  <%=rs2.getString(1) %></h3></div>
 <div class="right-div-right"><h3>City:  <%=rs2.getString(17) %></h3></div>
<div class="right-div"><h3>Address:  <%=rs2.getString(16) %></h3></div>
<div class="left-div"><h3>State:  <%=rs2.getString(18) %></h3></div>
<div class="right-div-right"><h3>Country:  <%=rs2.getString(19) %></h3></div>
--%>
<hr>
<%break;} %>

<br>

<table id="customer">
<h3>Product Deatils</h3>
<tr>
<th>S.no</th>
<th>Product Name</th>
<th>price</th>
<th>Quantity</th>
<th>sub Total</th>
</tr>
<% 
 	ResultSet rs1=st.executeQuery("select * from product inner join cart on product.p_id=cart.product_id and cart.email='"+email+"'");
	while(rs1.next()){
	sno=sno+1;
	%>
	<tr>
	<td><%out.println(sno); %></td>
	<td><%=rs1.getString("p_name") %></td>
	<td><%=rs1.getString("price") %></td>
	<td><%=rs1.getString("quantity") %></td>
	<td><%=rs1.getString("total") %></td>
	
	</tr>
	<%} %>

</table>
<h3>Total : <% out.println(total); %></h3>
<a href="continueShopping.jsp"><button class="button left-button">Continue shopping</button></a>
<br><br><br><br>
<%
}
catch(Exception e)
{
	out.println(e);
}

%>
</body>
</html>