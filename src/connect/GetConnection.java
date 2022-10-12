package connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class GetConnection {
	public static Connection getConnection() {
		
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver registerd successfully");
			
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_medishopdb", "root", "abc123");
			System.out.println("Connected");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con ;
		
	}

}