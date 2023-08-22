<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Daily Shop | Home</title>
    
    <%@include file="./common/header.jsp" %>
</style></head>
<body>
<%@include file="./common/middle.jsp" %>
  <!-- / menu -->  
<section id="aa-myaccount">
   <div class="container">
     <div class="row">
     <%
	String msg = request.getParameter("msg");
	if("notexist".equals(msg))
	{
	%>
	<h1>Incorrect Username or Password</h1>
	<script type="text/javascript">
    	alert("Incorrect Username or Password!!");
    </script>
	<%} %>
	<%
	if("invalid".equals(msg))
	{
	%>
	<h1>Something Went Wrong! Try Again!</h1>
	<script type="text/javascript">
    	alert("Something Went Wrong! Try Again !");
    </script>
	<%} %>
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">
              <div class="col-md-6">
                <div class="aa-myaccount-login">
                <h4>Login</h4>
                 <form action="LoginAction.jsp" class="aa-login-form">
                  <label for="">Username or Email address<span>*</span></label>
                   <input type="text" name="email" placeholder="Username or email" required>
                   <label for="">Password<span>*</span></label>
                    <input type="password" name="password" placeholder="Password" required>
                    <button type="submit" class="aa-browse-btn">Login</button>
                    <label class="rememberme" for="rememberme"><input type="checkbox" id="rememberme"> Remember me </label>
                    <p class="aa-lost-password"><a href="./forgotPassword.jsp">Lost your password?</a></p>
                    <div class="aa-register-now">
              			Don't have an account?<a href="./register.jsp">Register now!</a>
            		</div>
                  </form>
                </div>
              </div>
            </div>          
         </div>
       </div>
     </div>
   </div>
 </section>
 
<%@include file="./common/footer.jsp" %>
</body>
</html>