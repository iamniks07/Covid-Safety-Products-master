

import java.io.*;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","");
			Statement stmt = con.createStatement();
			
			String User = request.getParameter("userid");
			String Pass = request.getParameter("pass");
			
			String s = "select * from user";
			ResultSet rs = stmt.executeQuery(s);
			while(rs.next())
			{
				pw.println(rs.getInt(0));
				pw.println(rs.getString(1));
				String User1 = rs.getString(2);
				pw.println(rs.getString(3));
				String Pass1 = rs.getString(4);
				pw.println(rs.getInt(5));
			}
		}
		catch(Exception e)
		{
			pw.println(e);
		}
	}

}
