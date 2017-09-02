package com.model.mymenu.user;

import java.util.ArrayList;
import java.util.HashMap;

import com.model.dao.DaoCore;
import com.model.mymenu.user.Reserv_MarketBean;

public class ReservDao extends DaoCore{
	private static ReservDao instance = new ReservDao();
	public static ReservDao getInstance(){return instance;}
	
	public ArrayList<Reserv_MarketBean> getReservList(String userid) {
		ArrayList<Reserv_MarketBean> rblist = new ArrayList<Reserv_MarketBean>();
		try{
			rblist = (ArrayList<Reserv_MarketBean>) getSqlMapClient().queryForList("ReservDao.getReservList", userid);
		}catch(Exception e){
			e.printStackTrace();
		}
		return rblist;
	}
	
	public ArrayList<ReservBean> getMarketReservList(String email) {
		ArrayList<ReservBean> rblist = new ArrayList<ReservBean>();
		try{
			rblist = (ArrayList<ReservBean>) getSqlMapClient().queryForList("ReservDao.getMarketReservList", email);
		}catch(Exception e){
			e.printStackTrace();
		}
		return rblist;
	}
	
	public Reserv_MarketBean getReservInfo(String userid) {
		Reserv_MarketBean rb = new Reserv_MarketBean();
		try{
			rb = (Reserv_MarketBean) getSqlMapClient().queryForObject("ReservDao.getReservInfo", userid);
		}catch(Exception e){
			e.printStackTrace();
		}
		return rb;
	}
	public void updateReserv(int rev_idx, int service, String pets, String timeofrev, String date, String cctvid) {
		try{
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("rev_idx", rev_idx);
			param.put("service", service);
			param.put("pets", pets);
			param.put("timeofrev", timeofrev);
			param.put("date", date);
			param.put("cctvid", cctvid);
			getSqlMapClient().update("ReservDao.updateReserv", param);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void deleteReservInfo(String rev_idx) {
		try{
			getSqlMapClient().delete("ReservDao.deleteReservInfo", rev_idx);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
