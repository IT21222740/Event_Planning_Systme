package com.admin;

import java.sql.*;

public class DbConnect {
	
	private static String url = "jdbc:mysql://localhost:3300/planizer";
	private static String username = "root";
	private static String password = "thejan";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			//load drive
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
		}
		//exception
		catch(Exception e) {
			System.out.println("Database connection failed");
		}
		return con;
	}
	
}
	 
	
