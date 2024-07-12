package carrent2;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class gfgdg
 */
@WebServlet("/Entermain")
public class Entermain extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Entermain() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at:gfdfg ").append(request.getContextPath());
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection c =DriverManager.getConnection ("");
			Statement st = c.createStatement();

			
			String ss = request.getParameter("email1");
			String ss1 = request.getParameter("pass1");
			
			response.setContentType("text/html");
			ResultSet rs = st.executeQuery("Select * from signin WHERE email='"+ss+"' and password='"+ss1+"' ");
			if(rs.next()){
				String q1 = rs.getString("firstname");
				HttpSession session = request.getSession();
				session.setAttribute("key", q1);

				response.sendRedirect("carwel.jsp");
			}
			else if(ss.equals("mobilityfast@gmail.com") && ss1.equals("2122")){
				
					response.sendRedirect("admin.jsp");
			}
			else{
					response.sendRedirect("login.jsp");
				}
				
			
			st.close();
			c.close();
		}
		catch(Exception e){}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
