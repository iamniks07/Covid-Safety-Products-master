<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Daily Shop | Feedback</title>
    
    <%@include file="./common/header.jsp" %>
</style></head>
<body>
<%@include file="./common/middle1.jsp" %> 
 <head></head>
  <body>    
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <style>    
    * {    
      box-sizing: content-box;    
    }    
        
    input[type=text], select, textarea {    
      width: 100%;    
      padding: 12px;    
      border: 1px solid rgb(70, 68, 68);    
      border-radius: 4px;    
      resize: vertical;    
    }    
    input[type=email], select, textarea {    
      width: 100%;    
      padding: 12px;    
      border: 1px solid rgb(70, 68, 68);    
      border-radius: 4px;    
      resize: vertical;    
    }    
        
    label {    
      padding: 12px 12px 12px 0;    
      display: inline-block;    
    }    
        
    input[type=submit] {    
      background-color: rgb(37, 116, 161);    
      color: white;    
      padding: 12px 20px;    
      border: none;    
      border-radius: 4px;    
      cursor: pointer;    
      float: right;    
    }    
        
    input[type=submit]:hover {    
      background-color: #45a049;    
    }    
        
    
        
    .col-25 {    
      float: left;    
      width: 25%;    
      margin-top: 6px;    
    }    
        
    .col-75 {    
      float: left;    
      width: 75%;    
      margin-top: 6px;    
    }    
        
    /* Clear floats after the columns */    
    .row:after {    
      content: "";    
      display: table;    
      clear: both;    
    }    
        
    /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */    
    </style>    
      
    <h2 align="center">FEED BACK FORM</h2>    
    <div class="container">
    <%
       String msg = request.getParameter("msg");
       if("valid".equals(msg))
       {
       %>
       	<h1 align="center">Feedback Successfully Registered!!</h1>
       	<script type="text/javascript">
       	alert("Successfully Registered!!");
       	</script>
       <%} %>
      
       <%if("invalid".equals(msg))
       {
       %>
       	<h1 align="center">Something Went Wrong! Try Again !</h1>
       	
       <%} %>  
      <form action="Feedback">    
        <div class="row">    
          <div class="col-25">    
            <label for="userid">User Id</label>    
          </div>    
          <div class="col-75">    
            <input type="text" id="userid" name="uid" placeholder="Your user id..">    
          </div>    
        </div>    
        <div class="row">    
          <div class="col-25">    
            <label for="name">Name</label>    
          </div>    
          <div class="col-75">    
            <input type="text" id="name" name="name" placeholder="Your name..">    
          </div>    
        </div>    
        <div class="row">    
            <div class="col-25">    
              <label for="email">Mail Id</label>    
            </div>    
            <div class="col-75">    
              <input type="email" id="email" name="mailid" placeholder="Your mail id..">    
            </div>    
          </div>    
        <div class="row">    
          <div class="col-25">    
            <label for="city">City</label>    
          </div>    
          <div class="col-75">    
          	<input type="text" id="city" name="city" placeholder="Your city or address..">    
          </div>    
        </div>    
        <div class="row">    
          <div class="col-25">    
            <label for="feed_back">Feed Back</label>    
          </div>    
          <div class="col-75">    
            <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>    
          </div>    
        </div>    
        <div class="container" >    
          <a href="#">
          	<input type="submit" value="Submit">
          	<!-- <script type="text/javascript">prompt("Feedback Submitted")</script> -->
          </a>    
        </div>    
      </form>    
    </div>    
        
    </body>

 <%@include file="./common/footer.jsp" %>
</body>
</html>