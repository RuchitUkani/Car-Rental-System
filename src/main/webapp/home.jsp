<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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
       <link href="homecss.css" rel="stylesheet">
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css"></link>
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet"></link>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
</head>
<body>
			<div class="topnav" id="myTopnav">
			  <a href="#home" class="active">Home</a>
			  <a href="#news">News</a>
			  <a href="#services">Services</a>
			  <a href="#contact">Contact</a>
			 
			  <a href="#about">About Us</a>
			  <a href="login.jsp" class="login">Login</a> 
			  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
			    <i class="fa fa-bars"></i>
			  </a>
			</div>

			<div id="id01" class="modal">
	            <div class="signin">
	                
	                <form class="form1">
	                    <div class="name">
	                        EmailOrUsername:<input type="text" class="text"></input>
	                    </div>
	                    <div class="name">
	                        Password:<input type="password" class="text"></input>
	                    </div>
	                    <button type="submit" class="primary_btn">Sign In</button>
	                </form>
	                <div class="links">
	                    <a href="#">Forgot Password</a>
	                    <a href="#">Sign in with school or company</a>
	                </div>
	                <div class="or">
	                    <hr class="bar">
	                    <span>OR</span>
	                    <hr class="bar">
	                </div> 
	                <a href="#" class="secondary_btn">Create an account</a>
	            </div>
	            
	        </div>
	        
	        
	        <section id="hero" class="d-flex align-items-center">
            	<div class="container" data-aos="zoom-out" data-aos-delay="100">
	                <h1>Welcome to <span>Mobility Transmission</span></h1>
	                <h2>Easy Book and Comfortable Ride</h2>
	                <div class="d-flex">
	                    <a href="#about" class="btn-get-started scrollto">Get Started</a>
	                    <a href="https://youtu.be/Nl39DrcQNl4" class="glightbox btn-watch-video"><i class="bi bi-play-circle"></i><span>Watch Video</span></a>
	                </div>
	            </div>
        	</section>
		
			 <section id="featured-services" class="featured-services">
            <div class="container" data-aos="fade-up">
            <div class="section-title">
                    <h2>How we work</h2>
                    <h3>Find Out More <span>About Us</span></h3> 
                     <p>Below we have shown the small .</p>
                </div>
                <div class="row">
                    <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                        <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
                            <div class="icon"><i class="bi bi-search"></i></div>
                                <h4 class="title"><a href="">Find your car</a></h4>
                                <p class="description">Search the car which you want for booking and select book button</p>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                        <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
                            <div class="icon"><i class="bi bi-box-arrow-in-right"></i></div>
                            <h4 class="title"><a href="">Enter your route</a></h4>
                            <p class="description">Enter your starting and ending location with journey time and then you can book the car</p>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                        <div class="icon-box" data-aos="fade-up" data-aos-delay="300">
                            <div class="icon"><i class='fas fa-car'></i></div>
                             <h4 class="title"><a href=""> Get your car</a></h4>
                             <p class="description">After booking get the car from our store for the ride.</p>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                        <div class="icon-box" data-aos="fade-up" data-aos-delay="400">
                            <div class="icon"><i class="bi bi-geo-alt"></i></div>
                            <h4 class="title"><a href="">Return car</a></h4>
                            <p class="description">Return the car after your journey is over after your specified time.</p>
                        </div>
                    </div>

                </div>

            </div>
        </section>

			
		 <section id="about" class="about section-bg">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>About</h2>
                    <h3>Find Out More <span>About Us</span></h3>
                    <p>Mobility transmission is simple car rental website.You can easily book the car of your choice.</p>
                </div>

                <div class="row">
                    <div class="col-lg-6" data-aos="fade-right" data-aos-delay="100">
                        <img src="images/about.jpg" class="img-fluid" alt=""/>
                        </div>
                    <div class="col-lg-6 pt-4 pt-lg-0 content d-flex flex-column justify-content-center" data-aos="fade-up" data-aos-delay="100">
                        <h3>Most people like to self drive go and discover new places or visit their relatives</h3>
                        <p class="font-italic">
                            With our website  you can book a car of your choice and travel to your destination within the date chosen by you.
                            Our cars are well managed and giving better mileage so to give our customers better satisfaction.
                        </p>
                        <ul>
                            <li>
                                <i class="bx bx-store-alt"></i>
                                <div>
                                    <h5>Car booking done easily</h5>
                                    <p>Booking will be done within couple minutes in our website and after done a confirmation mail is send to the customer.</p>
                                </div>
                            </li>
                             <li>
                                <i class="bx bx-images"></i>
                                <div>
                                    <h5>Magnam soluta odio exercitationem reprehenderi</h5>
                                    <p>Quo totam dolorum at pariatur aut distinctio dolorum laudantium illo direna pasata redi</p>
                                </div>
                            </li> 
                        </ul>
                        <p>
                            WE  will Always give more choices the customers and we always do 
                            updation in our policies and website according to our customers wishes and satisfaction.
                            We will do our best.
                        </p>
                    </div>
                </div>
            </div>
        </section>
		
		<section id="counts" class="counts">
            <div class="container" data-aos="fade-up">

                <div class="row">

                    <div class="col-lg-3 col-md-6">
                        <div class="count-box">
                            <i class="bi bi-emoji-smile"></i>
                            <span data-purecounter-start="0" data-purecounter-end="232" data-purecounter-duration="1" class="purecounter"></span> 
                            <span>500</span>
                            <p>Happy Clients</p>
                        </div>
                    </div>

                 
                <div class="col-lg-3 col-md-6 mt-5 mt-md-0">
                    <div class="count-box">
                    <i class='fas fa-car'></i>
                        <span> 100</span>
                        <p>Total Working Cars</p>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
                    <div class="count-box">
                        <i class="bi bi-headset"></i>
                        <span data-purecounter-start="0" data-purecounter-end="1463" data-purecounter-duration="1" class="purecounter"></span> 
                        <span>24X7</span>
                        <p>Hours Of Support</p>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
                    <div class="count-box">
                        <i class="bi bi-people"></i>
                        <span data-purecounter-start="0" data-purecounter-end="15" data-purecounter-duration="1" class="purecounter"></span> 
                        <span>20</span>
                        <p>Hard Workers</p>
                    </div>
                </div>

            </div>

        </div>
    </section>
    
		<section id="services" class="services">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>Services</h2>
                <h3>Check our <span>Service</span></h3>
                <p>We provide you services mentioned below and many more</p>
            </div>

            <div class="row">
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
                    <div class="icon-box">
                        <div class="icon"><i class="bi bi-geo-alt-fill"></i></div>
                        <h4><a href="">Easy Booking</a></h4>
                        <p>Your boooking are done in one click after choosing your choice car.</p>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in" data-aos-delay="200">
                    <div class="icon-box">
                        <div class="icon"> <i class='fas fa-car'></i></div>
                        <h4><a href="">Good Condition Cars</a></h4>
                        <p>Car are serviced time to time and giving good mileage.</p>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0" data-aos="zoom-in" data-aos-delay="300">
                    <div class="icon-box">
                        <div class="icon"><i class="bi bi-tag-fill"></i></div>
                        <h4><a href="">Best Offers</a></h4>
                        <p>We give you better offer and more choices to our customers. </p>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="100">
                    <div class="icon-box">
                        <div class="icon"><i class='fas fa-users'></i></div>
                        <h4><a href="">Friendly Staff</a></h4>
                        <p>Our staff are hardworking and good natured ready to solve problem any time.</p>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="200">
                    <div class="icon-box">
                        <div class="icon"><i class="bi bi-phone-fill"></i></div>
                        <h4><a href=""></a>Mobile Ready</h4>
                        <p>Our website can run o mobile as well as PC so you can book from mobile too.</p>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="300">
                    <div class="icon-box">
                        <div class="icon"><i class="bi bi-x-circle-fill"></i></div>
                        <h4><a href="">Easy Cancellation</a></h4>
                        <p>You can cancel booking within 48 hr of booking but after that charged will be applied.</p>
                    </div>
                </div>

            </div>

        </div>
    </section>

		
	<section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Contact</h2>
          <h3><span>Contact Us</span></h3>
          <p>You can contact us via mail or call. Our email address and other contact information are mentioned below.</p>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-6">
            <div class="info-box mb-4">
            <i class="bi bi-geo-alt-fill"></i>
              <h3>Our Address</h3>
              <p>A108 Adam Street, New York, NY 535022</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
            <i class="bi bi-envelope-fill"></i>
              <h3>Email Us</h3>
              <p>mobilityfast@gmail.com</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
            <i class="bi bi-telephone-fill"></i>
              <h3>Call Us</h3>
              <p>+91 2342324235</p>
            </div>
          </div>

        </div>

      </div>
    </section>


	<footer id="footer">

            
    
            <div class="footer-top">
                <div class="container">
                    <div class="row">
    
                        <div class="col-lg-3 col-md-6 footer-contact">
                            <h3>Mobility Transmission<span>.</span></h3>
                            <p>A108 xxxxx <br></br>Nxxxx, Nxxxx 535022<br></br>India <br/><br/><strong>Phone:</strong> 1 5589 55488 55<br/><strong>Email:</strong> info@example.com<br/></p>
                        </div>
    
                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4>Useful Links</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
                            </ul>
                       </div>
                       <div class="col-lg-3 col-md-6 footer-links">
                            <h4>Our Services</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Car Booking</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Booking History</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Car Management</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Booking Cancellation</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">New Car Entry</a></li>
                            </ul>
                        </div>
    
                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4>Our Social Networks</h4>
                            <p>Cras fermentum odio eu feugiat lide par naso tierra videa magna derita valies</p>
                            <div class="social-links mt-3">
                                <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                                <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                                <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                                <a href="#" class="google-plus"><i class="bi bi-skype"></i></a>
                                <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
                            </div>
                        </div>
    
                    </div>
                </div>
            </div>
        </footer>
        
			

   <script>
         function myFunction() {
        	  var x = document.getElementById("myTopnav");
        	  if (x.className === "topnav") {
        	    x.className += " responsive";
        	  } else {
        	    x.className = "topnav";
        	  }
        	}
         var modal = document.getElementById('id01');
         window.onclick = function(event) {
             if (event.target == modal) {
                 modal.style.display = "none";
             }
         }
       
    </script>
	
</body>
</html>