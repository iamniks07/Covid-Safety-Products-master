<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Daily Shop | Home</title>
    
    <!-- Font awesome -->
    <link href="./assets/homepage2_files/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="./assets/homepage2_files/bootstrap.css" rel="stylesheet">   
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="./assets/homepage2_files/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="./assets/homepage2_files/jquery.simpleLens.css">    
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="./assets/homepage2_files/slick.css">
    <!-- price picker slider -->                                
    <link rel="stylesheet" type="text/css" href="./assets/homepage2_files/nouislider.css">
    <!-- Theme color -->
    <link id="switcher" href="./assets/homepage2_files/default-theme.css" rel="stylesheet">
    <!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
    <!-- Top Slider CSS -->
    <link href="./assets/homepage2_files/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

    <!-- Main style sheet -->
    <link href="./assets/homepage2_files/style.css" rel="stylesheet">    

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" type="text/css">

  <style id="__web-inspector-hide-shortcut-style__">
.__web-inspector-hide-shortcut__, .__web-inspector-hide-shortcut__ *, .__web-inspector-hidebefore-shortcut__::before, .__web-inspector-hideafter-shortcut__::after
{
    visibility: hidden !important;
}
</style></head>
<body>
<header id="aa-header">
    <!-- start header top  -->
    <div class="aa-header-top">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-top-area">
              <!-- start header top left -->
              <div class="aa-header-top-right">
                <ul class="aa-head-top-nav-right">
                  <li><a href="./account1.jsp">My Account</a></li>
                  <li class="hidden-xs"><a href="./wishlist.jsp">Wishlist</a></li>
                  <li class="hidden-xs"><a href="./cart.jsp">My Cart</a></li>
                  <li class="hidden-xs"><a href="./checkout.jsp">Checkout</a></li>
                  <li><a href="./login.jsp">Login</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- start header bottom  -->
    <div class="aa-header-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-bottom-area">
              <!-- logo  -->
              <div class="aa-logo">
                <img src="./assets/homepage2_files/covi safety5.png"><p>WE PROTECT FROM COVID</p>
              </div>
              <!-- cart box -->
              <div class="aa-cartbox">
                <a class="aa-cart-link" href="./homepage.jsp">
                  <span class="fa fa-shopping-basket"></span>
                  <span class="aa-cart-title">SHOPPING CART</span>
                  <span class="aa-cart-notify">2</span>
                </a>
                <div class="aa-cartbox-summary" style="display: none;">
                  <ul>
                    <li>
                      <a class="aa-cartbox-img" href="./homepage.jsp"><img src="./assets/covimages/h1.png" alt="img"></a>
                      <div class="aa-cartbox-info">
                        <h4><a href="./homepage.jsp">Product Name</a></h4>
                        <p>RS.150</p>
                      </div>
                      <a class="aa-remove-product" href="./homepage.jsp"><span class="fa fa-times"></span></a>
                    </li>
                    <li>
                      <a class="aa-cartbox-img" href="./homepage.jsp"><img src="./assets/covimages/h1.png" alt="img"></a>
                      <div class="aa-cartbox-info">
                        <h4><a href="./homepage.jsp">Product Name</a></h4>
                        <p>Rs.250</p>
                      </div>
                      <a class="aa-remove-product" href="./homepage.jsp"><span class="fa fa-times"></span></a>
                    </li>                    
                    <li>
                      <span class="aa-cartbox-total-title">
                        Total
                      </span>
                      <span class="aa-cartbox-total-price">
                        Rs.500
                      </span>
                    </li>
                  </ul>
                  <a class="aa-cartbox-checkout aa-primary-btn" href="./checkout.jsp">Checkout</a>
                </div>
              </div>
              <div class="aa-search-box">
                <form action="./product.jsp">
                  <input type="text" name="" id="" placeholder="Search here ex. &#39;man&#39; ">
                  <button type="submit"><span class="fa fa-search"></span></button>
                </form>
              </div>             
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
  <section id="menu">
    <div class="container">
      <div class="menu-area">
        <div class="navbar navbar-default" role="navigation">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>          
          </div>
          <div class="navbar-collapse collapse in" aria-expanded="true" style="">
            <ul class="nav navbar-nav" data-smartmenus-id="16491485551964553">
              <li><a href="./homepage.jsp">Home</a></li>
              <li class=""><a href="./product.jsp" class="has-submenu" id="sm-16484886160634744-1" aria-haspopup="true" aria-controls="sm-16484886160634744-2" aria-expanded="false">Product Category<span class="caret"></span></a>
                <ul class="dropdown-menu" id="sm-16484886160634744-2" role="group" aria-hidden="true" aria-labelledby="sm-16484886160634744-1" aria-expanded="false" style="width: auto; display: none;">                
                  <li><a href="./product.jsp">Mask</a></li>
                  <li><a href="./product.jsp">Sanitizer</a></li>
                  <li><a href="./product.jsp">Thermometer</a></li>
                  <li><a href="./product.jsp">PPE kit</a></li>                                                
                  <li><a href="./product.jsp">Anti-Fogg type</a></li>
                  <li><a href="./product.jsp">Oximeter</a></li>
                  <li><a href="./product.jsp">Hand Gloves</a></li>
                  <li><a href="./product.jsp">Shoe Cover</a></li>
                  <li><a href="./product.jsp" class="has-submenu" id="sm-16484886160634744-3" aria-haspopup="true" aria-controls="sm-16484886160634744-4" aria-expanded="false">And more.. <span class="caret"></span></a>
                    <ul class="dropdown-menu" id="sm-16484886160634744-4" role="group" aria-hidden="true" aria-labelledby="sm-16484886160634744-3" aria-expanded="false">
                      <li><a href="./product.jsp">Face Sheild</a></li>
                      <li><a href="./product.jsp">Vapour Machines</a></li>
                      <li><a href="./product.jsp">Hand Sanitizer</a></li>                                      
                    </ul>
                  </li>
                </ul>
              </li>
              <li><a href="./tips.jsp">Covid Preventive Tips</a></li>
             
              <li><a href="./feedback.jsp">Feedback</a></li>            
              <li><a href="./contact.jsp">Contact</a></li>
              <li class=""><a href="./product.jsp" class="has-submenu" id="sm-16484886160634744-19" aria-haspopup="true" aria-controls="sm-16484886160634744-20" aria-expanded="false">Pages <span class="caret"></span></a>
                <ul class="dropdown-menu" id="sm-16484886160634744-20" role="group" aria-hidden="true" aria-labelledby="sm-16484886160634744-19" aria-expanded="false" style="width: auto; display: none;">                
                  <li><a href="./product.jsp">Shop Page</a></li>
                  <li><a href="./product-detail.jsp">Shop Single</a></li>                

                </ul>
              </li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>       
    </div>
  </section>
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
                      <h4><a href="./product.jsp">MASK</a></h4>                      
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
                        <h4><a href="./product.jsp">SANITIZER</a></h4>                        
                      </div>
                    </div>
                  </div>
                  <div class="aa-f-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="./assets/covimages/ppe.jpg" alt="img">                      
                      <div class="aa-prom-content">
                        <h4><a href="./product.jsp">PPE KIT</a></h4>                        
                      </div>
                    </div>
                  </div>
                  <div class="aa-s-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="./assets/covimages/Thermometer.jpg" alt="img">                      
                      <div class="aa-prom-content">
                        <h4><a href="./product.jsp">THERMOMETER</a></h4>                        
                      </div>
                    </div>
                  </div>
                  <div class="aa-s-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="./assets/covimages/o2.jpg" alt="img">                      
                      <div class="aa-prom-content">
                        <h4><a href="./product.jsp">OXIMETER</a></h4>                        
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
  
     <!-- footer -->  
    <footer id="aa-footer">
      <!-- footer bottom -->
      <div class="aa-footer-top">
       <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-footer-top-area">
              <div class="row">
                <div class="col-md-3 col-sm-6">
                  <div class="aa-footer-widget">
                    <h3>Main Menu</h3>
                    <ul class="aa-footer-nav">
                      <li><a href="./homepage.jsp">Home</a></li>
                      <li><a href="./product.jsp">Our Products</a></li>
                      <li><a href="./contact.jsp">About Us</a></li>
                      <li><a href="./contact.jsp">Contact Us</a></li>
                      <li><a href="./suppliers.jsp">Suppliers</a></li>
                    </ul>
                  </div>
                </div>
  
                <div class="col-md-3 col-sm-6">
                  <div class="aa-footer-widget">
                    <div class="aa-footer-widget">
                      <h3>Contact Us</h3>
                      <address>
                        <p>Agarwal Medicals , railway station road, dondaicha.</p>
                        <p><span class="fa fa-phone">9421481303</span></p>
                        <p><span class="fa fa-envelope"></span>covisafe@gmail.com</p>
                      </address>
               		</div>
               	  </div>
               </div>
              </div>
             </div>
            </div>
           </div>
          </div>
        </div>
      </footer>

  <!-- Login Modal -->  
  <%-- <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog">
      <div class="modal-content">                      
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h4>Login or Register</h4>
          <form class="aa-login-form" action="Login">
            <label for="">Username or Email address<span>*</span></label>
            <input type="text" name="userid" placeholder="Username or email"/>
            <label for="">Password<span>*</span></label>
            <input type="password" name="pass" placeholder="Password"/>
            <input type="submit" name="submit" value="Login"/>
            <label for="rememberme" class="rememberme"></label>
            <p class="aa-lost-password"><a href="./homepage.jsp"></a></p>
            <div class="aa-register-now">
              Don't have an account?<a href="./account.jsp">Register now!</a>
            </div>
          </form>
        </div>                        
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div> --%>    
  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="./assets/homepage2_files/bootstrap.js.download"></script>  
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="./assets/homepage2_files/jquery.smartmenus.js.download"></script>
  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="./assets/homepage2_files/jquery.smartmenus.bootstrap.js.download"></script>  
  <!-- To Slider JS -->
  <script src="./assets/homepage2_files/sequence.js.download"></script>
  <script src="./assets/homepage2_files/sequence-theme.modern-slide-in.js.download"></script>  
  <!-- Product view slider -->
  <script type="text/javascript" src="./assets/homepage2_files/jquery.simpleGallery.js.download"></script>
  <script type="text/javascript" src="./assets/homepage2_files/jquery.simpleLens.js.download"></script>
  <!-- slick slider -->
  <script type="text/javascript" src="./assets/homepage2_files/slick.js.download"></script>
  <!-- Price picker slider -->
  <script type="text/javascript" src="./assets/homepage2_files/nouislider.js.download"></script>
  <!-- Custom js -->
  <script src="./assets/homepage2_files/custom.js.download"></script>
</body>
</html>