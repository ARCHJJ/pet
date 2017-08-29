package com.model.mymenu.user;

import java.util.ArrayList;
import java.util.HashMap;

import com.model.dao.DaoCore;

public class ReservDao extends DaoCore{
	private static ReservDao instance = new ReservDao();
	public static ReservDao getInstance(){return instance;}
	
	public ArrayList<ReservBean> getReservList(String userid) {
		ArrayList<ReservBean> rblist = new ArrayList<ReservBean>();
		try{
			rblist = (ArrayList<ReservBean>) getSqlMapClient().queryForList("ReservDao.getReservList", userid);
		}catch(Exception e){
			e.printStackTrace();
		}
		return rblist;
	}
	
	public ReservBean getReservInfo(String userid) {
		ReservBean rb = new ReservBean();
		try{
			rb = (ReservBean) getSqlMapClient().queryForObject("ReservDao.getReservInfo", userid);
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
