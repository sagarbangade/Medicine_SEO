<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body,h1 {font-family: "Raleway", sans-serif}
body, html {height: 100%}
.bgimg {
  background-image: url('resources/images/medi.jpg');
  min-height: 100%;
  background-position: center;
  background-size: cover;
}

.button {
  background-color: #04AA6D; /* Green */
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}


.button4 {
border-radius: 12px;
}
</style>

<body>


<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
 	<jsp:include page="userheader.jsp"></jsp:include>

  <div class="w3-display-middle">
    <h1 class="w3-jumbo w3-animate-top">SEARCH MEDICINE</h1>
  <form action="serachProduct.jsp" > 
  <div class="input-group add-on">
    <input class="form-control" placeholder="Medicine" name="srchmedi" id="srch-term1" type="text">
    <input class="form-control" placeholder="Pin Code" name="srchpincode" id="srch-term2" type="text">
   <!--  <div class="input-group-btn">
      <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
    </div>--> 
  </div>
<!-- <div class="w3-row w3-section">
  <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-user"></i></div>
    <div class="w3-rest">
      <input class="w3-input w3-border" name="medi" type="text" placeholder="Medicine">
     <input class="w3-input w3-border" name="pin" type="text" placeholder="Pin code">
    </div>
</div>
-->

    <hr class="w3-border-grey" style="margin:auto;width:40%">
     <!--  <p class="w3-large w3-center">35 days left</p> -->
    <center> <button class="w3-center button button4 ">Search</button></center> 
    </form>
  </div>

</div>


</body>
</html>