<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Daily Shop | Home</title>
    
    <%@include file="./common/header.jsp" %>
    
</style></head>
<body>
	<%@include file="./common/middle1.jsp" %>
  <!-- / menu -->
  <!-- Start slider -->
  <section id="aa-slider">
    <div class="aa-slider-area">
      <div id="sequence" class="seq seq-no-touch seq-active seq-autoplaying seq-step3" data-seq-enabled="0">
        <div class="seq-screen" style="height: 100%; width: 100%;">
          <ul class="seq-canvas">
            <!-- single slide item -->
            <li class="seq-in" style="z-index: 1; transition-duration: 0ms; transition-property: opacity, transform; opacity: 1;">
              <div class="seq-model" style="">
                <img src="./assets/covimages/home.jpeg">
              </div>
            </li>                   
          </ul>
        </div>
      </div>
    </div>
  </section>
  <%
  	String msg = request.getParameter("msg");
  	if("confirm".equals(msg))
  	{ %>
  		<script type="text/javascript">
       		alert("Thank you! Your Order Is Placed Successfully!!");
       	</script> 
  	<%	
  	}
  %>
  
  <section id="aa-promo">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-promo-area">
            <div class="row">
              
              <div class="col-md-5 no-padding">                
                <div class="aa-promo-left">
                  <div class="aa-promo-banner">                    
                    <img src="./assets/covimages/MaskBan.jpg" alt="img">                    
                    <div class="aa-prom-content">
                      <h4><a href="./prod2.jsp">MASK</a></h4>                      
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-7 no-padding">
                <div class="aa-promo-right">
                  <div class="aa-f-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="./assets/covimages/San.jpg" alt="img">                      
                      <div class="aa-prom-content">
                        <h4><a href="./prod2.jsp">SANITIZER</a></h4>                        
                      </div>
                    </div>
                  </div>
                  <div class="aa-f-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="./assets/covimages/ppe.jpg" alt="img">                      
                      <div class="aa-prom-content">
                        <h4><a href="./prod2.jsp">PPE KIT</a></h4>                        
                      </div>
                    </div>
                  </div>
                  <div class="aa-s-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="./assets/covimages/Thermometer.jpg" alt="img">                      
                      <div class="aa-prom-content">
                        <h4><a href="./prod2.jsp">THERMOMETER</a></h4>                        
                      </div>
                    </div>
                  </div>
                  <div class="aa-s-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="./assets/covimages/o2.jpg" alt="img">                      
                      <div class="aa-prom-content">
                        <h4><a href="./prod2.jsp">OXIMETER</a></h4>                        
                      </div>
                    </div>
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