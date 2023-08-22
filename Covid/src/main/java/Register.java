
import project.ConnectionProvider;
import java.io.*;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		try
		{
			Connection con = ConnectionProvider.getCon();
			Statement stmt = con.createStatement();
			
			int a=0;
			String name = request.getParameter("txtnm");
			String mail = request.getParameter("txtml");
			String addr = request.getParameter("txtadd");
			String cono = request.getParameter("txtcn");
			String user = request.getParameter("txtun");
			String pass = request.getParameter("txtps1");
			String cpass = request.getParameter("txtps2");
			
			ResultSet rs = stmt.executeQuery("select * from user where email='"+mail+"'");
			while(rs.next())
			{
				a=1;
			}
			
			if(a==1)
			{
				response.sendRedirect("register.jsp?msg=exist");
			}
			
			if(cpass.equals(pass))
			{
				String s = "insert into user values('"+user+"','"+name+"','"+mail+"','"+addr+"','"+pass+"',"+cono+")";
				int n = stmt.executeUpdate(s);
				response.sendRedirect("register.jsp?msg=valid");
			}
			else {
				response.sendRedirect("register.jsp?msg=same");
				
			}
		}
		catch(Exception e)
		{
			response.sendRedirect("register.jsp?invalid");
		}
	}

}
