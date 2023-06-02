package com.admin;

public class ViewAdmin {
	//attributes in admin dashboard
	private int noOfCustomers;
	private int noOfPlanners;
	private int noOfAdmins;
	private int noOfevents;
	private String adminId;
	
	
	
	
	//setters
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public void setNoOfCustomers(int noOfCustomers) {
		this.noOfCustomers = noOfCustomers;
	}
	public void setNoOfPlanners(int noOfPlanners) {
		this.noOfPlanners = noOfPlanners;
	}
	public void setNoOfAdmns (int noOfUsers) {
		this.noOfAdmins = noOfUsers;
	}
	public void setNoOfevents(int noOfevents) {
		this.noOfevents = noOfevents;
	}
	
	//getters
	public int getNoOfCustomers() {
		return noOfCustomers;
	}
	public int getNoOfPlanners() {
		return noOfPlanners;
	}
	public int getNoOfUsers() {
		return noOfAdmins;
	}
	public int getNoOfevents() {
		return noOfevents;
	}
	public String adminId() {
		return adminId;
	}
	
	
	
}
