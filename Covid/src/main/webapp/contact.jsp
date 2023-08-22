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
 
  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
   <img src="./assets/covimages/back2.jpg" height="250" width="1900">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Contact</h2>
        <ol class="breadcrumb">
          <li><a href="./home.jsp">Home</a></li>         
          <li class="active">Contact</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->
  <%
  String msg = request.getParameter("msg");
  if("done".equals(msg))
  {
  %>
  		<script type="text/javascript">
		alert("Your Query Submitted Successfully!!!");
		</script>
  <%} %>
<!-- start contact section -->
 <section id="aa-contact">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="aa-contact-area">
           <div class="aa-contact-top">
             <h2>We are wating to assist you..</h2>
             
           </div>

           <!-- Contact address -->
           <div class="aa-contact-address">
             <div class="row">
               <div class="col-md-8">
                 <div class="aa-contact-address-left">
                   <form class="comments-form contact-form" action="contact">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">          
                          <label>Name</label>              
                          <input type="text" placeholder="Your Name" name="name" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Email</label>                        
                          <input type="email" placeholder="Email" name="email" class="form-control">
                        </div>
                      </div>
                    </div>
                     <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Subject</label>                        
                          <input type="text" placeholder="Subject" name="subject" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-6">
                        
                      </div>
                    </div>                  
                     
                    <div class="form-group">
                      <label>Problem or message</label>                        
                      <textarea class="form-control" rows="3" placeholder="Message" name="message"></textarea>
                    </div>
                    <button class="aa-secondary-btn">Send</button>
                  </form>
                 </div>
               </div>
               <div class="col-md-4">
                 <div class="aa-contact-address-right">
                   <address>
                     <h4>CoviSafe</h4>
                     <p>Agarwal Medicals , railway station road, dondaicha.</p>
                     
                     <p><span class="fa fa-phone"></span> 9421481303</p>
                     <p><span class="fa fa-envelope"></span>Email: covisafe@gmail.com</p>
                   </address>
                 </div>
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