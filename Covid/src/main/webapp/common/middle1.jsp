<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
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
                <%
                	String email = session.getAttribute("email").toString();
                %>
                  <li><a href="./account1.jsp"><%out.println(email); %></a></li>
                  <li class="hidden-xs"><a href="./cart2.jsp">My Cart</a></li>
                  <li class="hidden-xs"><a href="./check2.jsp">Checkout</a></li>
                  <li><a href="./Logout.jsp">Logout</a></li>
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
              <li><a href="./home1.jsp">Home</a></li>
              <li class=""><a href="./prod2.jsp" class="has-submenu" id="sm-16484886160634744-1" aria-haspopup="true" aria-controls="sm-16484886160634744-2" aria-expanded="false">Product Category<span class="caret"></span></a>
                <ul class="dropdown-menu" id="sm-16484886160634744-2" role="group" aria-hidden="true" aria-labelledby="sm-16484886160634744-1" aria-expanded="false" style="width: auto; display: none;">                
                  <li><a href="./prod2.jsp">Mask</a></li>
                  <li><a href="./prod2.jsp">Sanitizer</a></li>
                  <li><a href="./prod2.jsp">Thermometer</a></li>
                  <li><a href="./prod2.jsp">PPE kit</a></li>                                                
                  <!-- <li><a href="./product.jsp">Anti-Fogg type</a></li> -->
                  <li><a href="./prod2.jsp">Oximeter</a></li>
                  <%-- <li><a href="./product.jsp">Hand Gloves</a></li>
                  <li><a href="./product.jsp">Shoe Cover</a></li>
                  <li><a href="./product.jsp" class="has-submenu" id="sm-16484886160634744-3" aria-haspopup="true" aria-controls="sm-16484886160634744-4" aria-expanded="false">And more.. <span class="caret"></span></a>
                    <ul class="dropdown-menu" id="sm-16484886160634744-4" role="group" aria-hidden="true" aria-labelledby="sm-16484886160634744-3" aria-expanded="false">
                      <li><a href="./product.jsp">Face Sheild</a></li>
                      <li><a href="./product.jsp">Vapour Machines</a></li>
                      <li><a href="./product.jsp">Hand Sanitizer</a></li>                                      
                    </ul>
                  </li>--%>
                </ul>
              </li>
              <li><a href="./tips2.jsp">Covid Preventive Tips</a></li>
             
              <li><a href="./feedback2.jsp">Feedback</a></li>            
              <li><a href="./contact2.jsp">Contact</a></li>
              <%-- <li class=""><a href="./product.jsp" class="has-submenu" id="sm-16484886160634744-19" aria-haspopup="true" aria-controls="sm-16484886160634744-20" aria-expanded="false">Pages <span class="caret"></span></a>
                <ul class="dropdown-menu" id="sm-16484886160634744-20" role="group" aria-hidden="true" aria-labelledby="sm-16484886160634744-19" aria-expanded="false" style="width: auto; display: none;">                
                  <li><a href="./product.jsp">Shop Page</a></li>
                  <li><a href="./product-detail.jsp">Shop Single</a></li>                

                </ul>--%>
              </li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>       
    </div>
  </section>
 </body>
</html>