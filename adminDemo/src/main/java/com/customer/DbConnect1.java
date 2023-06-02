package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnect1 {
	private static String url = "jdbc:mysql://localhost:3300/planizer";
	private static String username = "root";
	private static String password = "thejan";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
		}
		catch(Exception e) {
			System.out.println("Database connection failed");
		}
		return con;
	}

}
