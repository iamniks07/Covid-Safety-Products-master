<%@page import="java.io.PrintWriter"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../common/header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="....">
<title>Add New Product</title>
<style>
.back
{
color:white;
margin-left: 0%;
}
body
{
background-color: #ADD8E6;
}
</style>
</head>
<body>
<h2><a class="back" href="EditProduct.jsp">Back</a>
<a class="back" href="adminHome.jsp">Home</a></h2>


<%
PrintWriter pw = response.getWriter();
String id=request.getParameter("id");
pw.println(id);

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from product where p_id='"+id+"'");
	while(rs.next())
	{
		
%>
<div class="container">
<form action="editAction.jsp">
<input type="hidden" name="id" value="<%out.println(id); %>">
<div class="left-div">
<h3>Enter Name : </h3>
<input class="input-style" type="text" name="name" placeholder="<%=rs.getString(2) %>" required>
<hr>
</div>

<div class="right-div">
<h3>Enter Category : </h3>
<input class="input-style" type="text" name="category" placeholder="<%=rs.getString(3) %>" required>
<hr>
</div>


<div class="left-div">
<h3>Enter Price : </h3>
<input class="input-style" type="number" name="price" placeholder="<%=rs.getInt(4) %>" required>
<hr>
</div>


<button class="button" >save</button>

<%
}
}
catch(Exception e)
{
	out.println(e);
}
%>

</form>
</div>
</body>
</html>