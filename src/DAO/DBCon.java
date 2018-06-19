package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBCon {
	public static Connection getCon() throws ClassNotFoundException, SQLException {
		//1  load the db driver
		Class.forName("com.mysql.jdbc.Driver");
		//2  get the database conncetion
		Connection conn = DriverManager.getConnection(
				"jdbc:mysql://127.0.0.1:3306/bookstore?useUnicode=true&characterEncoding=utf-8","root", "root");

		if(conn != null){
			return conn;
		} else {
			return null;
		}
	}
}

