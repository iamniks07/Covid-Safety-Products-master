<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../common/header.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style type="text/css">
body{
	background-color: #ADD8E6;
}
.back{
color:white;
}
</style>
</head>
<body>
<h1 align="center">Add New Product</h1>
<h2 align="center"><a class="back" href="adminHome.jsp">Home</a></h2></h2>
<%
String msg = request.getParameter("msg");
if("added".equals(msg))
{
%>
<!--  <h3 class="alert">Product Added Sucessfully</h3>-->
	<script type="text/javascript">
    	alert("Product Added Sucessfully !");
    </script>
<%} %>
<%
int id=0;
try 
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("Select count(p_id) from product");
	while(rs.next())
	{
		id=rs.getInt(1);
		id=id+1;
	}
}
catch(Exception e)
{
	
}
%>
<div class="container">
<div class="row mt-5" align="center" border=1>
	<div class="col-md-6 offset-md-3">
		<form action="addNewProductAction.jsp" method="post">
		
			<h3 style="color:yellow;">Product ID: <%out.println(id); %></h3>
			<input type="text" name="id" value="<%out.println(id); %>">

			<div class="left-div">
				<h3>Enter Product Name : </h3>
			 	<input type="text" name="name" placeholder="Enter Name" required>
			</div>
 
			 <div class="right-div">
				 <h3>Enter Product category : </h3>
				 <input type="text" name="category" placeholder="Enter Category" required>
				 
			 </div>

			<div class="left-div">
				 <h3>Enter Product price : </h3>
				 <input type="number" name="price" placeholder="Enter Price" required>
				 
			</div>
			<div class="left-div">
				 <h3>Add Product photo : </h3>
				 <input type="file" name="photo" required>
				 
			</div>

			<button class="button">save <i class="far fa-arrow-alt-circle-right"></i></button>

</form>
</div>
</div>
</div>
</body>
</html>