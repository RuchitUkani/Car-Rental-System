<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Payment Option</title>
    <style>
    	body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        
        h2 {
            color: #333;
            text-align: center;
            margin-top: 20px;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Payment Option</h2>
   <%
       String a = request.getParameter("datefrom");
        String b = request.getParameter("dateto");
        String c = request.getParameter("getid");
        int a1 = Integer.parseInt(c);
        int a2 = 0; // Initialize a2 to hold the price
       
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection d = DriverManager.getConnection("");
            Statement st = d.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM regis_car WHERE Id='" + a1 + "'");
            if (rs.next()) {
                a2 = rs.getInt("price"); // Get the price from the result set
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
    <form action="book.jsp" method="post">
        <input type="hidden" name="datefrom" value="<%= request.getParameter("datefrom") %>">
        <input type="hidden" name="dateto" value="<%= request.getParameter("dateto") %>">
        <input type="hidden" name="getid" value="<%= request.getParameter("getid") %>">
        
        <!-- Payment details fields -->
        <label for="card_number">Card Number:</label>
        <input type="text" id="card_number" name="card_number" required><br><br>
        
        <label for="expiry_date">Expiry Date (MM/YY):</label>
        <input type="text" id="expiry_date" name="expiry_date" required><br><br>
        
        <label for="cvv">CVV:</label>
        <input type="text" id="cvv" name="cvv" required><br><br>
        
        <label for="amount">Amount:</label>
        <input type="text" id="amount" name="amount" value="<%= a2%>" readonly><br><br>
        
        <input type="submit" value="Make Payment">
    </form>
</body>
</html>
