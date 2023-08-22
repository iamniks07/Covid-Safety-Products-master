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
<%@include file="./common/middle1.jsp" %>
  <!-- / menu -->  
 
  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
    <img src="./assets/covimages/back2.jpg" height="250" width="1900">
    <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Account Page</h2>
        <ol class="breadcrumb">
          <li><a href="./home1.jsp">Home</a></li>                   
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
     <%@page import="project.ConnectionProvider"%>
     <%@page import="java.sql.*" %>
     <%
     	//String email = session.getAttribute("email").toString();
     	
     	try
     	{
     		Connection con = ConnectionProvider.getCon();
     		Statement stmt = con.createStatement();
     		ResultSet rs = stmt.executeQuery("select * from user where email='"+email+"'");
     		while(rs.next())
     		{
     			
     		
     %>
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">
              <div class="col-md-6">
                <div class="aa-myaccount-register">                 
                 <h4>User Details</h4>
                    <label for="">Name : <span><%=rs.getString("name") %></span></label><br>

                    <label for="">E-mail : <span><%=rs.getString("email") %></span></label><br>
                    
                    <label for="">Address : <span><%=rs.getString("address") %></span></label><br>
                    
                    <label for="">Contact No : <span><%=rs.getString("phone") %></span></label>
                    
                </div>
              </div>
            </div>          
         </div>
         <%
     		}
     	}
     	catch(Exception e)
     	{
     		out.println(e);
     	}
         %>
       </div>
     </div>
   </div>
 </section>
  <!-- / Cart view section -->

 
 <%@include file="./common/footer.jsp" %>
</body>
</html>