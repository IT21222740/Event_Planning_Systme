package com.admin;

public class User {

	//variables
	private String userName ;
	private String type;
	
	//Overloaded constructor
	public User(String userName, String type) {
		this.userName = userName;
		this.type = type;
	}
	
	
	
	// get method
	public String getUserName() {
		return userName;
	}
	
	public String getType() {
		return type;
	}
	
	
}
