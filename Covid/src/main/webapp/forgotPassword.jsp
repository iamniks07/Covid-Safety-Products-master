<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="assets/css/style.css">
<title>Forgot Password</title>
</head>
<body>
<div id="container">
	<div class="signup">
		<form action="forgotPasswordAction.jsp" method="post">
		<input type="email" name="email" placeholder="Enter Email.." required>
		<input type="number" name="mnumber" placeholder="Enter Mobile Number." required>
		<select name="securityQue" required>
	  	<option value="What is your favorite game?">What is your favorite game?</option>
	  	<option value="Which is your birth place?">Which is your birth place?</option>
	  	<option value="What is your favorite hobby?">What is your favorite hobby?</option>
	  	<option value="Which is your dream car?">Which is your dream car?</option>
	  	</select><br>
	  	<input type="text" name="answer" placeholder="Enter Answer" required>
	  	<input type="password" name="newPassword" placeholder="Enter New Password." required>
	  	<input type="submit" value="save">
		</form>
		<h2><a href="Login.jsp"></a></h2>
	</div>
	<div class="whyforgotPassword">
	<%
	String msg = request.getParameter("msg");
	if("done".equals(msg))
	{
	%>
		<h1>Password Changed Successfully!</h1>
	<%} %>
	<%if("invalid".equals(msg))
		{
	%>
		<h1>Something Went Wrong! Try Again!</h1>
	<%} %>
	</div>
</div>
</body>
</html>