<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<% 
   String id=request.getParameter("id");
   String name=request.getParameter("name");
   String category=request.getParameter("category");
   int price=Integer.parseInt(request.getParameter("price"));
   String photo=request.getParameter("photo");
      
       
    try
    {
    	Connection con=ConnectionProvider.getCon();
     	PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?)");
    	ps.setString(1,id);
    	ps.setString(2,name);
    	ps.setString(3,category);
    	ps.setInt(4,price);
    	ps.setString(5, photo);
    	
    	ps.executeUpdate();
    	response.sendRedirect("addNewProduct.jsp?msg=added");
    	
    	
    }
    catch(Exception e)
    {
    	out.println(e);
    	response.sendRedirect("addNewProduct.jsp?msg=invalid");
    }
    %>