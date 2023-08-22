<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%-- <link rel="stylesheet" href="assets/css/style.css"> --%>
<title>Sign up</title>
<%@include file="./common/header.jsp" %>
</head>
<body>
<%@include file="./common/middle.jsp" %>
<div id="container">
	<div class="signup">
	  <form action="SignUpAction.jsp" method="post">
	  <input type="text" name="name" placeholder="Enter Name" required><br>
	  <input type="email" name="email" placeholder="Enter Email" required><br>
	  <input type="number" name="mnumber" placeholder="Enter Mobile Number" required><br>
	  <select name="securityQue" required>
	  <option value="What is your favorite game?">What is your favorite game?</option>
	  <option value="Which is your birth place?">Which is your birth place?</option>
	  <option value="What is your favorite hobby?">What is your favorite hobby?</option>
	  <option value="Which is your dream car?">Which is your dream car?</option>
	  </select><br>
	  <input type="text" name="answer" placeholder="Enter answer" required><br>
	  <input type="password" name="password" placeholder="Enter Password" required><br>
	  <input type="submit" value="signup"> 
	  </form>
		<h2><a href="Login.jsp">Login</a></h2>
	</div>
	<div class="whysign">
<%
String msg = request.getParameter("msg");
if("valid".equals(msg))
{
%>
	<h1>Successfully Registered!!</h1>
	<script type="text/javascript">
	alert("Successfully Registered!!");
	</script>
<%} %>
<%if("invalid".equals(msg))
{
%>
	<h1>Something Went Wrong! Try Again !</h1>
	<script type="text/javascript">
	alert("Something Went Wrong! Try Again !");
	</script>
<%} %>
	</div>
</div>
</body>
</html>