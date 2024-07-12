package carrent2;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.accessibility.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class signinr
 */
//@WebServlet("/signinr")
public class Signinr extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signinr() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String b = request.getParameter("fname");
		String b1 = request.getParameter("lname");
		String b2 = request.getParameter("email");
		String b3 = request.getParameter("pass");
		
		try{Class.forName("com.mysql.jdbc.Driver");
		Connection c =DriverManager.getConnection ("");
		Statement st = c.createStatement();
		String ss = "insert into signin(firstname,lastname,email,password)  values('"+b+"','"+b1+"' ,'"+b2+"','"+b3+"')" ;
		//String ss1 = "insert into student1(firstName,lastName,price) values('"+a"','"+a1"','"+a2"')";
		st.executeUpdate(ss);		
		response.sendRedirect("login.jsp");
		st.close();
		c.close();}
		catch(Exception e){
			
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
