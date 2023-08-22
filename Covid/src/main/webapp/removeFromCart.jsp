<%@page import="java.io.PrintWriter"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<% 
	PrintWriter pw = response.getWriter();
	String email=session.getAttribute("email").toString();
	String product_id=request.getParameter("id");
	try
	{                                            
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		st.executeUpdate("delete from cart where email='"+email+"' and product_id='"+product_id+"'");
		response.sendRedirect("cart2.jsp?msg=removed");
		
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>