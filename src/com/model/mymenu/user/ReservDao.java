package com.model.mymenu.user;

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
}
