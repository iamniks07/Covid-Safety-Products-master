<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<% 
String email = request.getParameter("email");
String mnumber = request.getParameter("mnumber");
String securityQue = request.getParameter("securityQue");
String answer = request.getParameter("answer");
String newPassword = request.getParameter("newPassword");

int check = 0;
try
{
	Connection con = ConnectionProvider.getCon();
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select * from users where email='"+email+"' and number='"+mnumber+"' and securityQue='"+securityQue+"' and answer='"+answer+"'");
	while(rs.next())
	{
		check=1;
		stmt.executeUpdate("update users set password='"+newPassword+"' where email='"+email+"'");
		response.sendRedirect("forgotPassword.jsp?msg=done");
	}
	if(check==0)
	{
		response.sendRedirect("forgotPassword.jsp?msg=invalid");
	}
}
catch(Exception e)
{
	System.out.println(e);
	}
%>