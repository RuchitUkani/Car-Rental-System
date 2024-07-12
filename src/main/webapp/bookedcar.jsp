<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="homecss.css"  rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<%String s = (String)session.getAttribute("key");
	
	%>

<div class="topnav" id="myTopnav">
			  <a href="admin.jsp" class="active">Home</a>
			  <a href="carregister.jsp">Register car</a>
			  <a href="admin_car.jsp">Car</a>
			 <a href="#booked car">Booked car</a>
			  
			  
			  	<a href="home.jsp" id="logout" class="log"> Logout </a> 
			  	<a href="#" id="login" class="log"> <input type="button" value="Admin"> </a>
			  
			  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
			    <i class="fa fa-bars"></i>
			  </a>
			</div>

	<%
	try{Class.forName("com.mysql.jdbc.Driver");
	Connection c =DriverManager.getConnection ("");
	Statement st = c.createStatement();
	ResultSet rs = (ResultSet) st.executeQuery("Select * from carbook");
	
		%>
	
	
	<div align="center">
     <table border="5px" style="width:700px; align:center;margin-top:40px;background:#75b031;">
          <tr>
          	 <th>user name</th>
              <th>CompanyName</th>
              <th>Car Name </th>
              <th>Fuel Type</th>
              <th>Licence no</th>
              <th>Milage/km</th>
              <th>Gear Type</th>
              <th>No of seats</th>
              <th>Price</th>
              <th>Model year</th>
              <th>Location</th>
                <th>Date From</th>
                  <th>Date To</th>
              <th>Image</th>
              <th>Order complete</th>
             
          </tr>
         
         <%
         while(rs.next()){
        	
        	String q1 = rs.getString("booking_id");
        	String q2 = rs.getString("imageFileName");
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
        	String q13 = rs.getString("Date_from");
        	String q14 = rs.getString("Date_to");
        	String q15 = rs.getString("regis_id");
        	
        	
        	%>
        	
        
	
        	
          
          <tr style="text-align:center">
          <td><%out.println(s); %></td>
               <td><%=q3%></td>
               <td><%=q4%></td>
               <td><%=q5%></td>
               <td><%=q6%></td>
               <td><%=q7%></td>
               <td><%=q8%></td>
               <td><%=q9%></td>
               <td><%=q10%></td>
                <td><%=q11%></td>
                 <td><%=q12%></td>
                  <td><%=q13%></td>
                 <td><%=q14%></td>
              <td><img src="images/<%=q2%>" style="width:170px;height:100px"></td>
              <td id=i><a href="deletecar.jsp?x=<%=q1%>&y=<%=q15%>">complete</a> </td>
              
         	  
           </tr>
        <%
             
         }
        %>  
     </table>
</div>
		
		
		
	<%
	
	}
	catch(Exception e){}

	
	%>
</body>
</html>