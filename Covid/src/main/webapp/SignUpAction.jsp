<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%
String name = request.getParameter("txtnm");
String email = request.getParameter("txtml");
String addr = request.getParameter("txtadd");
String cono = request.getParameter("txtcn");
String user = request.getParameter("txtun");
String pass = request.getParameter("txtps1");
String cpass = request.getParameter("txtps2");
try
{
	Connection con = ConnectionProvider.getCon();
	Statement stmt = con.createStatement();
	
	if(cpass.equals(pass))
	{
		String s = "insert into user values('"+user+"','"+name+"','"+email+"','"+addr+"','"+pass+"',"+cono+")";
		int n = stmt.executeUpdate(s);
		/*pw.println("<script type=\"text/javascript\">");
		pw.println("alert('Registration Successful!!!');");
		pw.println("</script>");*/
		response.sendRedirect("register.jsp?msg=valid");
	}
	else {
		/*pw.println("<script type=\"text/javascript\">");
		pw.println("alert('Enter Same Password in both Password field!!!');");
		pw.println("</script>");*/
		response.sendRedirect("register.jsp?msg=same");
		
	}
}
catch(Exception e)
{
	//System.out.println(e);
	response.sendRedirect("register.jsp?msg=invalid");
}
%>