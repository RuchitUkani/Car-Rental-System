<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String a = request.getParameter("datefrom");
	String b = request.getParameter("dateto");
	String c = request.getParameter("getid");
	int a1= Integer.parseInt(c);
	

		
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection d =DriverManager.getConnection("");
		Statement st = d.createStatement();
		ResultSet rs = (ResultSet) st.executeQuery("Select * from regis_car where Id='"+a1+"' ");
		
		 while(rs.next()){
    	String q3 = rs.getString("Company_Name");
    	String q4 = rs.getString("Car_Name");
    	String q5 = rs.getString("Fueltype");
    	String q6 = rs.getString("Licence_No");
    	String q7 = rs.getString("Milage");
    	String q8 = rs.getString("Gear_Type");
    	String q9 = rs.getString("No_ofseat");
    	String q10 = rs.getString("Price");
    	String q11 = rs.getString("Model_year");
    	String q12 = rs.getString("Location");
    	String q13 = (String)session.getAttribute("key");
    	String q2 = rs.getString("imageFileName");
    	
    	String query="insert into carbook(Company_Name,Car_Name,Fueltype,Licence_No,Milage,Gear_Type,No_ofseat,Price,Model_year,Location,Date_from,Date_to,imageFileName,regis_id,user_name)  values('"+q3+"','"+q4+"' ,'"+q5+"','"+q6+"','"+q7+"' ,'"+q8+"','"+q9+"','"+q10+"' ,'"+q11+"','"+q12+"','"+a+"','"+b+"','"+q2+"','"+a1+"','"+q13+"')";
    	st.executeUpdate(query);
    	session.setAttribute("alertm","booking done successfully");
    	st.executeUpdate("UPDATE  regis_car  SET booked=true  WHERE id='"+a1+"'");
    	response.sendRedirect("carwel.jsp");
		 }
		}
		catch(Exception e){};
%>
</body>
</html>