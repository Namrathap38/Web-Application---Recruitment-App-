package JDBC;

import java.sql.Connection;
import java.sql.DriverManager;

public class RecruitmentJDBC {
	public static Connection getConnection(){
		Connection conn = null;
		try {
//			String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
//			String user = "hr";
//			String pass = "hr";

			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@10.17.3.30:1521:ORCL","scii1","scii1");
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return conn;
	}
}
