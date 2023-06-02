package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;

import com.mysql.cj.xdevapi.Statement;

public class customerDButil {
	private static Connection con;
	private static java.sql.Statement st;
	private static boolean isSuccess = false;
	
	public static boolean insertcustomer(String userId,String firstName, String lastName,String streetAddress, String district,String city, String postalCode, String personalPhone,String WorkPhone,String Email,String HeardAboutUs,String userName,String password) {
		
		
		
		//create database connection
				String url = "jdbc:mysql://localhost:3300/planizer";
				String user = "root";
				String pass = "thejan";
				
				try {
					
						con = DbConnect1.getConnection();
					
						st = con.createStatement();
						String sql="insert into planizer.customer(userId,firstName,lastName,streetAddress,district,city,PostalCode,PhonePersonal,PhoneWork,Email,HeardAboutUs)\r\n" + "values('"+userId+"','"+firstName+"', '"+lastName+"', '"+streetAddress+"', '"+district+"', '"+city+"', '"+postalCode+"', '"+personalPhone+"', '"+WorkPhone+"', '"+Email+"', '"+HeardAboutUs+"')";
					
						String sql1 = "insert into planizer.user(userId,password,type) values ('"+userId+"','"+password+"','C')";

						int rs = st.executeUpdate(sql1);
						if (rs >0) {
							rs = 0;
							rs = st.executeUpdate(sql);
							if (rs >0) {
								isSuccess = true;
							}else {
								isSuccess = false;
							}
							
						}else {
							isSuccess = false;
						}
						
					}

				catch(Exception e){
					e.printStackTrace();
				}
				
		return isSuccess;
	
	}

}
