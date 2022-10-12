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
	<jsp:include page="venderHeader.jsp"></jsp:include>

	<div class="w3-container" style="margin-top: 40px">

		<div class="w3-container w3-card-4  "
			style="width: 1220px; height: 600px; margin-left: 50px; margin-top: 50px;"
			method="get">
			<table class="table table-bordered">
  <thead class="w3-red">
    <tr>
      <th scope="col">Sr.no</th>
      <th scope="col">Product name</th>
      <th scope="col">Manufacturer</th>
      <th scope="col">Mfg. Date</th>
      <th scope="col">Exp. Date</th>
      <th scope="col">Power</th>
      <th scope="col">Qty</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
       <%
					int no = 1;
 	        		Connection con=GetConnection.getConnection();
					Statement st=con.createStatement();
					String vname=null;
					if (session != null) {
				 		 vname = (String) session.getAttribute("vname");
					}
				   else {
			 		out.print("Please login first");
			 		request.getRequestDispatcher("login.html").include(request, response);
			 	}
					ResultSet rs=st.executeQuery("SELECT * FROM tbl_product where shope_owner ='"+vname+"'");
					
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
					<td><%=rs.getString(8)%></td>
					<td><a href="DeleteProdServ?pid=<%= rs.getInt(1)%>" class ="btn btn-danger">Delete</a> 
					<a href="updateProduct.jsp?pid=<%= rs.getInt(1) %>" class="btn btn-info">Update</a></td>
				</tr>
			    <%
			    } 
			    %>
   
  </tbody>
</table>
			
			</div>
	</div>

</body>
</html>