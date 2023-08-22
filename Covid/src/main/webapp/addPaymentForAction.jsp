<%@page import="java.io.PrintWriter"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
PrintWriter pw = response.getWriter();
String name=request.getParameter("name");
pw.println(name);
String email=session.getAttribute("email").toString();
pw.println(email);
String phone=request.getParameter("number");
pw.println(phone);
String address=request.getParameter("address");
pw.println(address);

String city=request.getParameter("city");
pw.println(city);
String state=request.getParameter("state");
pw.println(state);
String country=request.getParameter("country");
pw.println(country);


String paymentMethod=request.getParameter("paymentMethod");
String status="bill";
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("update user set address=?,c_city=?,c_state=?,c_country=? where email=?");
	ps.setString(1,address);
	ps.setString(2,city);
	ps.setString(3,state);
	ps.setString(4,country);
	ps.setString(5,email);
	ps.executeUpdate();
	

	PreparedStatement ps1=con.prepareStatement("update cart set address=?,city=?,state=?,country=?,mob_number=?,p_method=?,status=? where email=? and address is NULL");

	ps1.setString(1,address);
	ps1.setString(2,city);
	ps1.setString(3,state);
	ps1.setString(4,country);
	ps1.setString(5,phone);
	ps1.setString(6,paymentMethod);
	ps1.setString(7,status);
	ps1.setString(8,email);
	ps1.executeUpdate();
	response.sendRedirect("bill.jsp");
}

catch(Exception e)
{
	out.println(e);
}
%>