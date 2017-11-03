package com.model.mymenu.user;

public class Reserv_MarketBean {
	// key
	private int market_id;
	private int reservation_service;
	private int item_idx;
	
	// reservation table
	private int rev_idx;
	private String member_email;
	private String reservation_pets;
	private String timeofrev;
	private String date;
	private int cctvid;
	
	//market table
	private String market_email;
	private String market_name;
	private String market_description;
	private String market_photos;
	private String address;
	
	//item table
	private String item_name;
	private String description;
	private String photos;
	private String price;
	
	public int getItem_idx() {
		return item_idx;
	}
	public void setItem_idx(int item_idx) {
		this.item_idx = item_idx;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPhotos() {
		return photos;
	}
	public void setPhotos(String photos) {
		this.photos = photos;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
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
	public String getReservation_pets() {
		return reservation_pets;
	}
	public void setReservation_pets(String reservation_pets) {
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
	