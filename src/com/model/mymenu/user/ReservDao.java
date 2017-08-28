package com.model.mymenu.user;

import java.util.HashMap;

import com.model.dao.DaoCore;

public class ReservDao extends DaoCore{
	private static ReservDao instance = new ReservDao();
	public static ReservDao getInstance(){return instance;}
	
	public ReservBean getReservInfo(String userid) {
		ReservBean rb = new ReservBean();
		try{
			rb = (ReservBean) getSqlMapClient().queryForObject("ReservDao.getReservInfo", userid);
		}catch(Exception e){
			e.printStackTrace();
		}
		return rb;
	}
	
	public ReservBean deleteReservInfo(String select_rev_idx) {
		ReservBean rb = new ReservBean();
		try{
			rb = (ReservBean) getSqlMapClient().queryForObject("ReservDao.deleteReservInfo", select_rev_idx);
		}catch(Exception e){
			e.printStackTrace();
		}
		return rb;
	}
}
