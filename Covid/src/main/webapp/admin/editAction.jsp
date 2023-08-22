<%@page import="java.io.PrintWriter"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");

String name=request.getParameter("name");
String category=request.getParameter("category");
int price=Integer.parseInt(request.getParameter("price"));
PrintWriter pw = response.getWriter();
pw.println(id);
pw.println(name);
pw.println(category);
pw.println(price);
   
try
{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	String s = "update product set p_name='"+name+"' ,p_category='"+category+"' ,p_price="+price+" where p_id='"+id+"'";
	int n = st.executeUpdate(s);
	pw.println(n);	
}

catch(Exception e)
{
	out.println(e);
}
%>
<!-- PreparedStatement ps = con.prepareStatement("update product set p_name=?, p_category=? ,p_price=? where p_id=?");
	ps.setString(1, name);
	ps.setString(2, category);
	ps.setInt(3, price);
	ps.setString(4, id);
	ps.executeUpdate(); -->