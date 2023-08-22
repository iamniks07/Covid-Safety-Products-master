<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
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
	<div class="aa-cartbox">
	<%
	int sno = 0;
	try
	{
		Connection con = ConnectionProvider.getCon();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from cart ");
		while(rs.next())
		{
			sno +=1;
	%>
                <a class="aa-cart-link" href="./homepage.jsp">
                  <span class="fa fa-shopping-basket"></span>
                  <span class="aa-cart-title">SHOPPING CART</span>
                  <span class="aa-cart-notify"><%out.println(sno); %></span>
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
       <%
			}
		}
		catch(Exception e)
		{
			out.println(e);
		}
       %>
</header>
</body>
</html>
