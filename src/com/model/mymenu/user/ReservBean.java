package com.model.mymenu.user;

public class ReservBean {
	private int rev_idx;
	private String member_email;
	private int market_id;
	private int service;
	private int pets;
	private String timeofrev;
	private String date;
	private int cctvid;

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
	public int getMarket_id() {
		return market_id;
	}
	public void setMarket_id(int market_id) {
		this.market_id = market_id;
	}
	public int getService() {
		return service;
	}
	public void setService(int service) {
		this.service = service;
	}
	public int getPets() {
		return pets;
	}
	public void setPets(int pets) {
		this.pets = pets;
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
}
