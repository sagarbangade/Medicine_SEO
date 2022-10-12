<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
	<jsp:include page="header.jsp"></jsp:include>
	<div class="w3-container w3-half  "  style="margin: 100px 300px;">
		<div class="w3-container w3-card-4 "
			style="width: 900px; height: 400px;">
			<div class="container mt-3">
				<h2 align="center">Login Form</h2>
				<form action="AcLoginServ" style=" align: center; margin-top: 60px;">
					
					<select id="selector"  name="accountType"> <!-- Use "select" to create object -->
         			<option  selected>Select Account Type</option> <!-- Add all applicable options -->
         			<option>User</option>
                    <option>Vender</option> <!-- add selected to change default from first option --> 
                    </select>
					<div class="mb-3 mt-3">
						<label for="email">Username:</label> <input type="text"
							class="form-control" id="email" placeholder="Enter username"
							name="username">
					</div>
					<div class="mb-3">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" id="pwd" placeholder="Enter password"
							name="pswd">
					</div>
					<div class="form-check mb-3">
						
					</div>
					<button type="submit" class="btn btn-primary btn-lg">Submit</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>