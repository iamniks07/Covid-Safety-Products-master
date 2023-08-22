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
  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
    <img src="./assets/covimages/back2.jpg" height="250" width="1900">
    <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Account Page</h2>
        <ol class="breadcrumb">
          <li><a href="./home.jsp">Home</a></li>                   
          <li class="active">Account</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->

 <!-- Cart view section -->
 <section id="aa-myaccount">
   <div class="container">
     <div class="row">
     <%
       	String msg = request.getParameter("msg");
     	if("exist".equals(msg))
     	{
     	%>
     		<h1>Email is already exist!!</h1>
     		<script type="text/javascript">
     		alert("Email is already exist!!");
     		</script>
     	<%}
       	if("valid".equals(msg))
       	{
       	%>
       		<h1>Successfully Registered!!</h1>
       		<script type="text/javascript">
       		alert("Successfully Registered!!");
       		</script>
       	<%}
       	if("same".equals(msg))
       	{
       	%>
       		<h1>Both password should be same!</h1>
       		<script type="text/javascript">
       		alert("Both Password should be Same !");
       		</script>
       	<%}
       	if("invalid".equals(msg))
       	{
       	%>
       		<h1>Something Went Wrong! Try Again !</h1>
       		<script type="text/javascript">
       		alert("Something Went Wrong! Try Again !");
       		</script>       	
       	<%} %>
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">
              <div class="col-md-6">
                <div class="aa-myaccount-register">                 
                 <h4>Register</h4>
                 <form action="Register" class="aa-login-form">
                    <label for="">Name : <span>*</span></label>
                    <input type="text" placeholder="name" name="txtnm" required>
                    <label for="">E-mail : <span>*</span></label>
                    <input type="text" placeholder="email" name="txtml" required>
                    <label for="">Address : <span>*</span></label>
                    <textarea cols="65" rows="4" name="txtadd" ></textarea>
                    <label for="">Contact No : <span>*</span></label>
                    <input type="text" placeholder="contact no" name="txtcn" required>
                    <label for="">Create Username : <span>*</span></label>
                    <input type="text" placeholder="username" name="txtun" required>
                    <label for="">Create Password : <span>*</span></label>
                    <input type="password" placeholder="password" name="txtps1" required>
                    <label for="">Confirm Password : <span>*</span></label>
                    <input type="password" placeholder="re-enter password" name="txtps2" required>
                    <button type="submit" class="aa-browse-btn">Register</button>         
                    <div class="aa-register-now"><br>
              			Already have an account?<a href="./login.jsp">Log in!</a>
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
  <!-- / Cart view section -->

 <%@include file="./common/footer.jsp" %>
 
</body>
</html>