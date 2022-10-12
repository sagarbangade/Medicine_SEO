<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="connect.GetConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>view Items</title>
</head>
<body>
	<jsp:include page="userheader.jsp"></jsp:include>

	<div class="w3-container" style="margin-top: 40px"">

		<div class="w3-container w3-card-4  "
			style="width: 1220px; height: 600px; margin-left: 50px; margin-top: 50px;"
			method="get">
			<table class="table table-bordered">
  <thead class="w3-red">
    <tr>
      <th scope="col">Sr.no</th>
      <th scope="col">Product name</th>
      <th scope="col">Manufacturer</th>
      <th scope="col">Mfg.Date</th>
      <th scope="col">Exp.Date</th>
      <th scope="col">Power</th>
      <th scope="col">Qty</th>
      <th scope="col">Price</th>
      <th scope="col">Gmap Link</th>
    </tr>
  </thead>
  <tbody>
       <%
             String srchMedi=request.getParameter("srchmedi");
             String srchpincode=request.getParameter("srchpincode");
             
					int no = 1;
 	        		Connection con=GetConnection.getConnection();
					Statement st=con.createStatement();
					ResultSet rs=st.executeQuery("SELECT * FROM tbl_product WHERE pname LIKE '"+srchMedi+"%' and pincode='"+srchpincode+"'");
					
					while (rs.next()) {
				%>
				<tr>
					<td><%=no++%></td>
					<td><%=rs.getString(2) %></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getString(4)%></td>
					<td><%=rs.getString(5)%></td>
					<td><%=rs.getString(6)%></td>
					<td><%=rs.getString(7)%></td>
					<td><%=rs.getString(8) %></td>
					
					
					<!-- COPY -->
					<%
					
					Connection con1=GetConnection.getConnection();
					Statement st1=con1.createStatement();
					ResultSet rs1=st1.executeQuery("SELECT * FROM vender_reg WHERE email='"+rs.getString(10)+"'");
					
					while (rs1.next()) { %>
					
					<td><a href="<%=rs1.getString(9)%>" target="_blank">Shop Location</a></td>
					
					 <%
			   		 } //Run kr k cheek kro
					rs1.close();
					%>
				</tr>
			    <%
			    } 
					rs.close();
					if(no==1)
						out.print("<center><h3 style=\"color:blue;\">This Combination of Medicine and PinCode does not exist</h3></center>");
			    %>
   
  </tbody>
</table>
			
			</div>
	</div>

</body>
</html>