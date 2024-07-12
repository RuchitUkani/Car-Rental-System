<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="homecss.css"  rel="stylesheet">
<style>
		*{
    margin: 0; 
    padding: 0;
   
    }

	.container{
	    margin: 2rem;
	    border: 2px solid black;
	    padding: 1rem;
	    display: flex;
	    flex-direction: row;
	    align-items: center;
	    border-radius: 1rem;
	     background:#e3e3e3;
	    justify-content: space-between;
	}
	
	.content{
	    display: flex;
	    border: 2px solid black;
	    flex-direction: column;
	    padding: 0.7rem;
	    color:#e4e0e0;
	    background:#729355;;
	    border-radius: 1rem;
	    width: 40%;
	}
	.btn{
		text-align:center;
		background-color: #65a965;
		cursor: pointer;
		padding-bottom : 5px;
		height : 2rem; 
		width : 6rem;
		border-radius: 10px;
		outline: none;
		padding-top : 5px;
		transition : 1s;
		color : whitesmoke;
		margin-left : 1rem;
	}
	
	.btn:hover {
		background-color : #057d21;
	}

</style>


<title>Insert title here</title>
</head>
<body>
<%String s = (String)session.getAttribute("key"); %>

<div class="topnav" id="myTopnav">
			  <a href="carwel.jsp" class="active">Home</a>
			  <a href="booking.jsp">Booking</a>
			 <a href="home.jsp" id="logout" class="log"> Logout </a> 
			  	<a href="myaccount.jsp" id="login" class="log"> <input type="button" value="  <%  out.print(s);%>"> </a>
			  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
			    <i class="fa fa-bars"></i>
			  </a>
			</div>

              
		<%	
		try{Class.forName("com.mysql.jdbc.Driver");
		Connection c =DriverManager.getConnection ("");
		Statement st = c.createStatement();
		ResultSet rs = (ResultSet) st.executeQuery("Select * from regis_car Where booked =false ");
		while(rs.next()){
			String q1 = rs.getString("Id");
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
        	String q13 = rs.getString("booked");
        	//out.println(q13);
			%>
				<div class="container">
		        <div class="image">
		            <img src="images/<%=q2%>" style="width:170px;height:100px">
		        </div>
		        <div class="content">
		            <h3>CompanyName :<%=q3%></h3>
		            <h3>Car Name : <%=q4%></h3>
		            <h3>Price : <%=q10%></h3>
		            <h3>Location : <%=q12%></h3>
		            <form action="payment.jsp">
		            <input type="hidden" value="<%=q1%>" name="getid">
		            <input type="date" name="datefrom" value="From :" style="margin : 0 1rem;"><input type="date" name="dateto" value="To :">
		            <input type="submit" class="btn"  value="Book Now">
		            </form>
		        </div>
		    </div>
		   <%
		}
		}		   
		   catch(Exception e){} %> 
</body>
</html>