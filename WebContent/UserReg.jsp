<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/Register.css">
<title>UserReg</title>
<style>
* {box-sizing: border-box;}

/* Style the input container */
.input-container {
  display: flex;
  width: 100%;
  margin-bottom: 20px;
}

/* Style the form icons */
.icon {
  padding: 10px;
  background: dodgerblue;
  color: white;
  min-width: 50px;
  text-align: center;
}

/* Style the input fields */
.input-field {
  width: 100%;
  padding: 10px;
  outline: none;
}

.input-field:focus {
  border: 2px solid dodgerblue;
  
}

/* Set a style for the submit button */
.btn {
  background-color: dodgerblue;
  color: white;
  padding: 15px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
  
  
}

.btn:hover {
  opacity: 1;
}</style>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<center>	
	<form action="UserRegServ" method="get">
	<div class="container" style="height: 750px;">
		<div class="registerbox w3-container w3-card-4 w3-light-grey" style="width: 500px; height: 600px;">
			<h2 style="margin-top: 30px;">Register New User</h2>
			<input type="text" name="fname" placeholder="Enter First Name" style="margin-top: 25px;" required >
			<input type="text" name="lname" placeholder="Enter Last Name" required>
			<input type="text" name="email" placeholder="Enter Email ID" required>
			<input type="text"  name="phno" placeholder="Enter Phone Number" onkeypress="return event.charCode>= 48 && event.charCode<= 57" required>
			<input type="password" name="pass1" placeholder="Enter Password" required>
			<input type="password" name="pass2" placeholder="Retype Password" required>
			<input type="submit" value="Submit"  style="margin-top: 40px; ">
		</div>
		</div>
	</form>
</center>

</body>
</html>