package carrent2;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class carregs
 */
@WebServlet("/carregs")
@MultipartConfig
public class carregs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public carregs() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());

		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		System.out.println("In do post method of Add Image servlet.");
		Part file=request.getPart("image");
		
		String imageFileName=file.getSubmittedFileName();  // get selected image file name
		System.out.println("Selected Image File Name : "+imageFileName);
		
		 String uploadPath = "C:/Users/jeet shah/eclipse-workspace/Carrent/src/main/webapp/images/" + imageFileName;
	        System.out.println("Upload Path : " + uploadPath);
		
		String a = request.getParameter("cname");
		String a1 = request.getParameter("carn");
		String a2 = request.getParameter("ftype");
		String a3 = request.getParameter("lname");
		String a4 = request.getParameter("milage");
		String a5 = request.getParameter("gtype");
		String a6 = request.getParameter("noseat");
		String a7 = request.getParameter("price");
		String a8 = request.getParameter("myear");
		String a9 = request.getParameter("loc");
		

		
		
		// Uploading our selected image into the images folder
		
		try
		{
		
		FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=file.getInputStream();
		
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		//********
		
		//getting database connection (jdbc code)
		Connection connection=null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection("");
			PreparedStatement stmt;
			String query="insert into regis_car(Company_Name,Car_Name,Fueltype,Licence_No,Milage,Gear_Type,No_ofseat,Price,Model_year,Location,imageFileName)  values('"+a+"','"+a1+"' ,'"+a2+"','"+a3+"','"+a4+"' ,'"+a5+"','"+a6+"','"+a7+"' ,'"+a8+"','"+a9+"','"+imageFileName+"')";
			stmt=connection.prepareStatement(query);
			//stmt.setString(1,imageFileName);
			int row=stmt.executeUpdate(); // it returns no of rows affected.
			
			if(row>0)
			{
				System.out.println("Image added into database successfully.");
			}
			
			else
			{
				System.out.println("Failed to upload image.");
			}
			
			response.sendRedirect("admin.jsp");
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		
	}
	
}
