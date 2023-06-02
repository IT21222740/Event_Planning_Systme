package com.admin;

public class Events {
	//attributes
	private int eventId;
	private String plannerId;
	private String eventType;
	private String eventDate;
	private String starTime;
	private String endTime;
	private String venueLocation;
	private String venueEmail;
	
	//setters
	public int getEventId() {
		return eventId;
	}
	public String getPlannerId() {
		return plannerId;
	}
	public String getEventType() {
		return eventType;
	}
	public String getEventDate() {
		return eventDate;
	}
	public String getStarTime() {
		return starTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public String getVenueLocation() {
		return venueLocation;
	}
	public String getVenueEmail() {
		return venueEmail;
	}
	//oveloaded constructor
	public Events(int eventId, String plannerId, String eventType, String eventDate, String starTime, String endTime,
			String venueLocation, String venueEmail) {
		super();
		this.eventId = eventId;
		this.plannerId = plannerId;
		this.eventType = eventType;
		this.eventDate = eventDate;
		this.starTime = starTime;
		this.endTime = endTime;
		this.venueLocation = venueLocation;
		this.venueEmail = venueEmail;
	}
	
}
