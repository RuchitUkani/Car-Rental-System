<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="admincss.css" rel="stylesheet">	      
<link
        href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
        rel="stylesheet"
        id="bootstrap-css"
      />
      <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
      <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
      <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <link
        rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous"
      />
	
      <link
        rel="stylesheet"
        href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
        integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
        crossorigin="anonymous"
      />
		
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css"></link>
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet"></link>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
</head>
<body>
		
		
    	<div class="topnav" id="myTopnav">
			  <a href="admin.jsp" class="active">Home</a>
			  
			  <a href="carregister.jsp">Register car</a>
			  <a href="admin_car.jsp">Car</a>
			 <a href="bookedcar.jsp">Booked car</a>
			  
			  
			  	<a href="home.jsp" id="logout" class="log">Logout</a>
			  	<a href="#"  class="login"> <input type="button" value="admin"> </a> 
			  
			 
			  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
			    <i class="fa fa-bars"></i>
			  </a>
		</div>
    	
    	 <section id="hero" class="d-flex align-items-center">
            	<div class="container" data-aos="zoom-out" data-aos-delay="100">
	                <h1>Welcome  <span>ADMIN</span></h1>
	                <h2>Easy Book and Comfortable Ride</h2>
	                <div class="d-flex">
	                    <a href="#about" class="btn-get-started scrollto">Get Started</a>
	                    <a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="glightbox btn-watch-video"><i class="bi bi-play-circle"></i><span>Watch Video</span></a>
	                </div>
	            </div>
        	</section>
		
			

    	<script>
         function myFunction() {
        	  var x = document.getElementById("myTopnav");
        	  if (x.className === "topnav") {
        	    x.className += " responsive";
        	  } else {
        	    x.className = "topnav";
        	  }
        	}
         </script>
       
</body>
</html>