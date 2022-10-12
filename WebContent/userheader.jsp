<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
</head>
<body>

	<div class="w3-top">
		<div class="w3-bar w3-red w3-card w3-left-align w3-large">
			<a
				class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red"
				href="javascript:void(0);" onclick="myFunction()"
				title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a> 
				<a href="index.html" class="w3-bar-item w3-button w3-padding-large w3-hover-white">Home</a>
			<a href="#about" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">About us</a> 
			<a href="#contact"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Contact
				us</a>
				
						<a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large" style="margin-left: 700px;">	
				<% 
		        if(session!=null){  
		        String name=(String)session.getAttribute("uname");  
		        String aname[]=name.split("@");
		        out.print("Welcome "+aname[0].toUpperCase());  
		        }  
		        else{  
		            out.print("Please login first");  
		            request.getRequestDispatcher("login.html").include(request, response);  
		        }
		        %>
		  
				</a>
				<a href="logoutServlet"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" style="margin-left: 10px;">Logout
				</a>
		</div>

		<!-- Navbar on small screens -->
		<div id="navDemo"
			class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
			<a href="#" class="w3-bar-item w3-button w3-padding-large">Vender
				Registrstion</a> <a href="#"
				class="w3-bar-item w3-button w3-padding-large">User Registrstion</a>
			<a href="#" class="w3-bar-item w3-button w3-padding-large">About
				Us </a> <a href="#" class="w3-bar-item w3-button w3-padding-large">Login</a>
		</div>
	</div>

	<!-- Header 
  <header class="w3-container w3-red w3-center" style="padding:200px 20px, height:100px">
  <h1 class="w3-margin w3-jumbo" >MEDICAL SHOP</h1>
  <p class="w3-xlarge"></p>
  <button class="w3-button w3-black w3-padding-large w3-large w3-margin-top">Get Started</button>
</header>
-->
</body>
</html>
