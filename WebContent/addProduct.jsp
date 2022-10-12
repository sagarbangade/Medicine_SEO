<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/AddProduct.css">
<title>add Product</title>
</head>
<body>
	<jsp:include page="venderHeader.jsp"></jsp:include>
	<div class="w3-container" style="margin-top: 40px ">
		<div class="w3-container w3-card-4  "
			style="width: 1200px; height: 600px; margin-left: 50px; margin-top: 50px;" method="get">
			<form action="AddProdServlet" method="get">
				<div class="bigcard" style="margin-top: 20px">
					<div class="bigcard1 " style="margin-left: 80px;">
						<h3 style="margin-top: 20px">Product Name</h3>
						<input type='text' name='pname' style="padding: 20px;" required>
						<h3 style="margin-top: 20px">Product ID</h3>
						<input type='text' name='pid'
							style="padding: 20px;" required>
					<h3 style="margin-top: 20px">Manufacturer Name</h3><input type='text'  name='mfname' style="padding: 20px;" required>
					<h3 style="margin-top: 20px">Manufacture Date</h3><input type="text" name="mgfdate" placeholder="YYYY-MM-DD" onkeypress="return event.charCode>= 48 && event.charCode<= 57 || event.charCode==45" style="padding: 20px;" required>
					<h3 style="margin-top: 20px">Expiry Date</h3><input type="text" name="expdate" placeholder="YYYY-MM-DD" onkeypress="return ((event.charCode>= 48 && event.charCode<= 57) || event.charCode==45)" style="padding: 20px;"required>
    		  	</div>
  		    	<div class="bigcard2" style="margin-left:  40px">
  		    	<h3 style="margin-top: 20px">Power</h3><input type="text" name="power"  onkeypress="return ((event.charCode>= 48 && event.charCode<= 57) || event.charCode==45)" style="padding: 20px;"required>
   					 <h3 style="margin-top: 20px">Quantity</h3><input type="text" name="quantity" onkeypress="return event.charCode>= 48 && event.charCode<= 57" style="padding: 20px;" required>
   					 <h3 style="margin-top: 20px">Price</h3><input type="text" name="price" onkeypress="return event.charCode>= 48 && event.charCode<= 57" style="padding: 20px;" required>
   					 <p></p>
 					<h3 align="center"><input type="submit" value="Add" style="margin-left: 10px; margin-top: 15px;  "></h3> 
				</div>
			</div>
		</form>
	</div>
</div>
</body>
</html>