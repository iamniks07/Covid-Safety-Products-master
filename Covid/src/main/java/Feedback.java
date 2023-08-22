
import project.ConnectionProvider;
import java.io.*;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Feedback
 */
@WebServlet("/Feedback")
public class Feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Feedback() {
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
			
			String id = request.getParameter("uid");
			String name = request.getParameter("name");
			String mail = request.getParameter("mailid");
			String city = request.getParameter("city");
			String fback = request.getParameter("subject");
			
			String s = "insert into feedback values('"+id+"','"+name+"','"+mail+"','"+city+"','"+fback+"')";
			int n = stmt.executeUpdate(s);
			pw.println(n + "Record Added");
			response.sendRedirect("feedback.jsp?msg=valid");
		}
		catch(Exception e)
		{
			System.out.println(e);
			response.sendRedirect("feedback.jsp?msg=valid");
		}
	}

}
