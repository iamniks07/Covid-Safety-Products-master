<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../common/header.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
h1
{
color:yellow;
text-align:center;

}
.back
{
color: white;
margin-left: 0%;
}
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
<h1 align="center">All Products and Edit Products</h1>
<h2 align="center"><a class="back" href="adminHome.jsp">Home</a></h2></h2>

<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement(); %>
<table border=1 align="center">
	<thead>
	<tr>
	<th scope="col">ID</th>
	<th scope="col">Name</th>
	<th scope="col">Category</th>
	<th scope="col"><i clas="fa fa-inr"></</i>Price</th>
	<th scope="col"> <i class="fas fa-pen-fancy"></i></th>
	</tr>
	</thead>
	<tbody>
	<% 
	
		ResultSet rs=st.executeQuery("select * from product");
		while(rs.next())
		{
		%>
		<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><i class="fa fa-inr"></i> <%=rs.getString(4) %></td>
		<td><a href="edit.jsp?id=<%=rs.getString(1) %>"> <i class="fas fa-pen-fancy"></i></a></td>
		</tr>
	<%
		}
	}
	catch(Exception e)
	{
		out.println(e);
	}
	%>
	
	</tbody>
	
</table>
<br>
</body>
</html>