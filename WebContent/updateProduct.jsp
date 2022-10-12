<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="connect.GetConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Product</title>

<style type="text/css">

.float-container {
    border: 3px solid #fff;
    padding: 20px;
}

.float-child {
    width: 50%;
    float: left;
    padding: 20px;
    
}  
.upbutton {
  background-color: #008CBA; /* Green */
  border: none;
  color: white;
  padding: 15px 70px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
</head>
<body>
<%!String pid,pname,mname,mft_date,exp_date,power,quantity,price; %>
	<%
					int no = 1;
 	        		Connection con=GetConnection.getConnection();
					PreparedStatement ps=con.prepareStatement("SELECT * FROM tbl_product WHERE pid=? ");
					ps.setString(1, request.getParameter("pid"));
					ResultSet rs=ps.executeQuery();
					
					while (rs.next()) {
				        System.out.println(rs.getString(1));
				        pid=rs.getString(1);
				        System.out.println(rs.getString(2));
				        pname=rs.getString(2);
				        System.out.println(rs.getString(3));
				        mname=rs.getString(3);
				        System.out.println(rs.getString(4));
				        mft_date=rs.getString(4);
				        System.out.println(rs.getString(5));
				        exp_date=rs.getString(5);
				        System.out.println(rs.getString(6));
				        power=rs.getString(6);
				        System.out.println(rs.getString(7));
				        quantity=rs.getString(7);
				        System.out.println(rs.getString(8));
				        price=rs.getString(8);
			    } 
					
			    %>
			    
				<jsp:include page="venderHeader.jsp"></jsp:include>
	<div class="w3-container" style="margin-top: 40px ">

		<div class="w3-container w3-card-4 "
			style="width: 1200px; height: 600px; margin-left: 50px; margin-top: 50px;"
			method="get">
			<form action="UpdateProdServ" method="get">
				<div class="float-container" style="margin-top: 20px">
					<div class="float-child">
						<h3 style="margin-top: 20px">Product Name</h3>
						<input type='text' name='pname' value='<%=pname%>' style="padding: 20px;" readonly>
						  <h3 style="margin-top: 20px">Product ID</h3>
						<input type='text' name='pid' value="<%=pid %>"
							style="padding: 20px;" readonly>
					<h3 style="margin-top: 20px">Manufacturer Name</h3><input type='text'  name='mfname' value="<%=mname %>" style="padding: 20px;" readonly>
					<h3 style="margin-top: 20px">Manufacture Date</h3><input type="text" name="mgfdate" value="<%=mft_date %>" placeholder="YYYY-MM-DD" onkeypress="return event.charCode>= 48 && event.charCode<= 57 || event.charCode==45" style="padding: 20px;" required>
    		  	   <h3 style="margin-top: 20px">Expiry Date</h3><input type="text" name="expdate" value="<%=exp_date %>" placeholder="YYYY-MM-DD" onkeypress="return ((event.charCode>= 48 && event.charCode<= 57) || event.charCode==45)" style="padding: 20px;"required>
    		  	   </div>
  		    	<div class="float-child">	
  		    		<h3 style="margin-top: 20px">Power</h3><input type="text" name="power" value="<%=power %>"  onkeypress="return ((event.charCode>= 48 && event.charCode<= 57) || event.charCode==45)" style="padding: 20px;"required>
   					 <h3 style="margin-top: 20px">Quantity</h3><input type="text" name="quantity" value="<%=quantity %>" onkeypress="return event.charCode>= 48 && event.charCode<= 57" style="padding: 20px;" required>
   					 <h3 style="margin-top: 20px">Price</h3><input type="text" name="price" value="<%=price %>" onkeypress="return event.charCode>= 48 && event.charCode<= 57" style="padding: 20px;" required>
   					 <p></p>
 					<h3><input type="submit" class="upbutton" value="Update" style="margin-left: 10px; margin-top: 15px;  "></h3> 
				</div>
			</div>
		</form>
			</div>
	</div>
</body>
</html><!-- check kro zopla ka ? -->