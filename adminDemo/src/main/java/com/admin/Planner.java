package com.admin;

public class Planner {
	private String plannerId;
	private String	plannerFirstName;
	private String	plannerLastName;
	private String	eventType;
	private String	address;
	private double	salary;
	private int	age;
	private String	gender;
	private String	phoneNumber;
	
	
	//overloaded constructor
	public Planner(String plannerId, String plannerFirstName, String plannerLastName, String eventType, String address,
			double salary, int age, String gender, String phoneNumber) {
		super();
		this.plannerId = plannerId;
		this.plannerFirstName = plannerFirstName;
		this.plannerLastName = plannerLastName;
		this.eventType = eventType;
		this.address = address;
		this.salary = salary;
		this.age = age;
		this.gender = gender;
		this.phoneNumber = phoneNumber;
	}
	//getters
	public String getPlannerId() {
		return plannerId;
	}
	public String getPlannerFirstName() {
		return plannerFirstName;
	}
	public String getPlannerLastName() {
		return plannerLastName;
	}
	public String getEventType() {
		return eventType;
	}
	public String getAddress() {
		return address;
	}
	public double getSalary() {
		return salary;
	}
	public int getAge() {
		return age;
	}
	public String getGender() {
		return gender;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}

}
