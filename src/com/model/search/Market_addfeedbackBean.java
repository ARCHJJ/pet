package com.model.search;

public class Market_addfeedbackBean {
	private int market_id;
	
	// market_feedback Table
	private int order;
	private String writer_email;
	private String content;
	private String date;
	
	// market Table
	private String market_email;
	private String market_name;
	private String description;
	private String photos;
	private int pets;
	private String address;
	private int classes;
	private int service;
	
	public int getMarket_id() {
		return market_id;
	}
	public void setMarket_id(int market_id) {
		this.market_id = market_id;
	}
	public int getOrder() {
		return order;
	}
	public void setOrder(int order) {
		this.order = order;
	}
	public String getWriter_email() {
		return writer_email;
	}
	public void setWriter_email(String writer_email) {
		this.writer_email = writer_email;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
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
	public int getPets() {
		return pets;
	}
	public void setPets(int pets) {
		this.pets = pets;
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
	public int getService() {
		return service;
	}
	public void setService(int service) {
		this.service = service;
	}
	
}
