package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnecation {

	public static Connection createConnection()
	{
		Connection conn = null;
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
