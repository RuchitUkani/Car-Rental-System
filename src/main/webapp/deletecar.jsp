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

Class.forName("com.mysql.jdbc.Driver");
Connection c =DriverManager.getConnection ("");
Statement st = c.createStatement();

String  s =	request.getParameter("x");
int a = Integer.parseInt(s);
String  s1 =	request.getParameter("y");
int a1 = Integer.parseInt(s1);
st.executeUpdate("DELETE FROM  carbook WHERE booking_id='"+a+"'  ");
st.executeUpdate("UPDATE  regis_car  SET booked =false  WHERE id='"+a1+"'");
response.sendRedirect("bookedcar.jsp");
st.close();
c.close();
%>

</body>
</html>