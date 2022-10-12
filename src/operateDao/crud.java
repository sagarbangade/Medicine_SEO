package operateDao;

import java.sql.*;

import connect.GetConnection;

public class crud {
	
	public static int addUsrreg(String first,String last,String email,String phone,String password,String reEnterPass) {
		int status=0;
		try {
			Connection con=GetConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("INSERT INTO usr_reg ( fname, lname, email, phone, password, reEnterPass) values(?,?,?,?,?,?) ");
			ps.setString(1, first);
			ps.setString(2, last);
			ps.setString(3, email);
			ps.setString(4, phone);
			ps.setString(5, password);
			ps.setString(6, reEnterPass);
			
			status=ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
		
		
	}


public static int addVenderreg(String first,String last,String email,String phone,String venderName,String address,String pincode ,String password,String glink) {
	int status=0;
	try {
		Connection con=GetConnection.getConnection();
		PreparedStatement ps=con.prepareStatement("INSERT INTO vender_reg ( fname, lname, email, phone, venderName, address, pincode, password, glink) values(?,?,?,?,?,?,?,?,?) ");
		ps.setString(1, first);
		ps.setString(2, last);
		ps.setString(3, email);
		ps.setString(4, phone);
		ps.setString(5, venderName);
		ps.setString(6, address);
		ps.setString(7, pincode);
		ps.setString(8, password);
		ps.setString(9, glink);
		
		status=ps.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return status;
	
	
}

 public static boolean login(String sql,String userName,String pass) throws ClassNotFoundException, SQLException
{
	int userCount=0;
	int falseCount=0;
	Connection con=GetConnection.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=null;
	rs = st.executeQuery(sql);
	while(rs.next()){
		userCount++;
	String dbUserName =	rs.getString("email");
	String dbpswd =	rs.getString("password");	
	if(userName.equals(dbUserName)&&pass.equals(dbpswd))
	{
	  return true;	
	}
	else
	{
		falseCount++;
	}
	}
	
	if(falseCount==userCount)
	{
		falseCount =0;
		return false;
	}
	
	falseCount=0;
	
	return true;
}
 
 public static int addProd(String pid,String pname,String mname,String mft_date,String exp_date,String power,String quantity,String price,String pincode,String shope_owner) {
	 int status=0;
	 try {
		  Connection con=GetConnection.getConnection();
		  PreparedStatement ps=con.prepareStatement("INSERT INTO tbl_product (pid, pname, mname, mft_date, exp_date, power, quantity, price,pincode,shope_owner) values(?,?,?,?,?,?,?,?,?,?) ");
		  ps.setString(1, pid);
		  ps.setString(2, pname);
		  ps.setString(3, mname);
		  ps.setString(4, mft_date);
		  ps.setString(5, exp_date);
		  ps.setString(6, power);
		  ps.setString(7, quantity);
		  ps.setString(8, price);
		  ps.setString(9, pincode);
		  ps.setString(10, shope_owner);
		  status=ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return status;
}
 
 public static int deleteProd(int pid){
	 int status=0;
	 try {
		 Connection con=GetConnection.getConnection();
		 PreparedStatement ps=con.prepareStatement("DELETE FROM tbl_product WHERE pid=?");
		 ps.setInt(1, pid);
		 
		 status=ps.executeUpdate();
		 
	} catch (Exception e) {
		e.printStackTrace();
	}
	 return status;
 }
 
 public static int updateProd(String pid,String pname,String mname,String mft_date,String exp_date,String power,String quantity,String price){
	 int status=0;
	 try {
		 Connection con=GetConnection.getConnection();
		  PreparedStatement ps=con.prepareStatement("UPDATE tbl_product SET pname=?, mname=?, mft_date=?, exp_date=?, power=?, quantity=?, price=? where pid =?");
		  ps.setString(1, pname);
		  ps.setString(2, mname);
		  ps.setString(3, mft_date);
		  ps.setString(4, exp_date);
		  ps.setString(5, power);
		  ps.setString(6, quantity);
		  ps.setString(7, price);
		  ps.setString(8, pid);
		  
		  status=ps.executeUpdate();
		  
	} catch (Exception e) {
		e.printStackTrace();
	
	}
	 return status;
 }
 
 
 public static String getPin(String vMail) throws SQLException
 {
	 String pin=null;
	    Connection con=GetConnection.getConnection();
		Statement st=con.createStatement();
		ResultSet rs=null;
		rs = st.executeQuery("SELECT * FROM vender_reg where email='"+vMail+"'");
		while(rs.next()){
		pin=rs.getString("pincode");
		}
	return pin; 
 }
}
