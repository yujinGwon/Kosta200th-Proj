package dbConn.util;

import java.sql.*;

public class ConnectionHelper {
	public static Connection getConnection(String dsn) {
		Connection conn = null;

		try {
			if (dsn.equals("mysql")) {
				// mysql 드라이브 로드 및 연결 실행

			} else if (dsn.equals("oracle")) {
				Class.forName("oracle.jdbc.driver.OracleDriver");

				conn = DriverManager.getConnection(
						"jdbc:oracle:thin:@localhost:1521:xe", 
						"c##gyj", 
						"oracle");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return conn;
		}
	}

	public static Connection getConnection(String dsn, String user, String pwd) {
		Connection conn = null;
		
		try {
			if(dsn.equals("mysql")) {
				// mysql 드라이브 로드 및 연결 실행
				
			} else if(dsn.equals("oracle")) {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				conn = DriverManager.getConnection(
						"jdbc:oracle:thin:@localhost:1521:xe",
						user, 
						pwd);				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return conn;
		}}}
