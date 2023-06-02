package com.admin;
import java.sql.*;
import java.util.*;



public class UserDbutil {
	//static variables
	private static boolean check;
	private static Connection con;
	private static Statement st;
	private static ResultSet rs;
	
	//validate username and password
	public static boolean validate(String userName, String password ) {
		
		try{
			con = DbConnect.getConnection();
			st = con.createStatement();
			String sql = "Select * from planizer.user where userId = '"+userName+"' and password = '"+password+"' " ;
			rs = st.executeQuery(sql);
			check = rs.next();
		}	
		catch(Exception e) {
			e.printStackTrace();
		}
		return check;			
			
	}
	//get userid and user type from the data base
	public static ArrayList<User> getUserDetails(String userName){
		ArrayList<User> user = new ArrayList<>();
		try {
				con = DbConnect.getConnection();
				st = con.createStatement();
				String sql = "Select * from planizer.user where userId = '"+userName+"' " ;
				rs = st.executeQuery(sql);
				if(rs.next()) {
					String userid = rs.getString(1);
					String type = rs.getString(3);
					User u = new User(userid,type);
					user.add(u);
				}
			}
			catch(Exception e) {
				e.printStackTrace();
				
			}
	
		return user;
		
		
	}
	
}
	
