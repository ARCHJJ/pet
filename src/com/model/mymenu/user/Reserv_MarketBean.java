package com.model.mymenu.user;

public class Reserv_MarketBean {
	// key
	private int market_id;
	
	// reservation table
	private int rev_idx;
	private String member_email;
	private int reservation_service;
	private int reservation_pets;
	private String timeofrev;
	private String date;
	private int cctvid;
	
	//market table
	private String market_email;
	private String market_name;
	private String market_description;
	private String market_photos;
	private int market_pets;
	private String address;
	private int classes;
	private int market_service;
	
	public int getMarket_id() {
		return market_id;
	}
	public void setMarket_id(int market_id) {
		this.market_id = market_id;
	}
	public int getRev_idx() {
		return rev_idx;
	}
	public void setRev_idx(int rev_idx) {
		this.rev_idx = rev_idx;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public int getReservation_service() {
		return reservation_service;
	}
	public void setReservation_service(int reservation_service) {
		this.reservation_service = reservation_service;
	}
	public int getReservation_pets() {
		return reservation_pets;
	}
	public void setReservation_pets(int reservation_pets) {
		this.reservation_pets = reservation_pets;
	}
	public String getTimeofrev() {
		return timeofrev;
	}
	public void setTimeofrev(String timeofrev) {
		this.timeofrev = timeofrev;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getCctvid() {
		return cctvid;
	}
	public void setCctvid(int cctvid) {
		this.cctvid = cctvid;
	}
	public String getMarket_email() {
		return market_email;
	}
	public void setMarket_email(String market_email) {
		this.market_email = market_email;
	}
	public String getMarket_name() {
		return market_name;
	}
	public void setMarket_name(String market_name) {
		this.market_name = market_name;
	}
	public String getMarket_description() {
		return market_description;
	}
	public void setMarket_description(String market_description) {
		this.market_description = market_description;
	}
	public String getMarket_photos() {
		return market_photos;
	}
	public void setMarket_photos(String market_photos) {
		this.market_photos = market_photos;
	}
	public int getMarket_pets() {
		return market_pets;
	}
	public void setMarket_pets(int market_pets) {
		this.market_pets = market_pets;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getClasses() {
		return classes;
	}
	public void setClasses(int classes) {
		this.classes = classes;
	}
	public int getMarket_service() {
		return market_service;
	}
	public void setMarket_service(int market_service) {
		this.market_service = market_service;
	}
}
	