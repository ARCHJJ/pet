package com.model.mymenu.user;

import java.util.ArrayList;
import java.util.HashMap;

import com.model.dao.DaoCore;
import com.model.mymenu.user.Reserv_MarketBean;
import com.model.reservation.Market_addserviceBean;

public class ReservDao extends DaoCore {
	private static ReservDao instance = new ReservDao();

	public static ReservDao getInstance() {
		return instance;
	}

	public ArrayList<Reserv_MarketBean> getReservList(String userid) {
		ArrayList<Reserv_MarketBean> rblist = new ArrayList<Reserv_MarketBean>();
		try {
			rblist = (ArrayList<Reserv_MarketBean>) getSqlMapClient().queryForList("ReservDao.getReservList", userid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rblist;
	}

	public ArrayList<Reserv_MarketBean> getMarketReservList(String email) {
		ArrayList<Reserv_MarketBean> rblist = new ArrayList<Reserv_MarketBean>();
		try {
			rblist = (ArrayList<Reserv_MarketBean>) getSqlMapClient().queryForList("ReservDao.getMarketReservList", email);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rblist;
	}

	public Reserv_MarketBean getReservInfo(String userid) {
		Reserv_MarketBean rb = new Reserv_MarketBean();
		try {
			rb = (Reserv_MarketBean) getSqlMapClient().queryForObject("ReservDao.getReservInfo", userid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rb;
	}

	public void updateReserv(int rev_idx, String pets, String timeofrev, String date, String cctvid) {
		try {
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("rev_idx", rev_idx);
			param.put("pets", pets);
			param.put("timeofrev", timeofrev);
			param.put("date", date);
			param.put("cctvid", cctvid);
			getSqlMapClient().update("ReservDao.updateReserv", param);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void deleteReservInfo(String rev_idx) {
		try {
			getSqlMapClient().delete("ReservDao.deleteReservInfo", rev_idx);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 예약하기위해 정보를 불러오는 쿼리
	public Market_addserviceBean needReservInfo(int market_id, String service_name) {
		Market_addserviceBean mb = new Market_addserviceBean();
		try {
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("market_id", market_id);
			param.put("service_name", service_name);
			
			mb = (Market_addserviceBean) getSqlMapClient().queryForObject("ReservDao.needReservInfo", param);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mb;
	}
	
	// 예약입력정보를 db에 등록하는 쿼리
	public void submitReserv(String member_email, int market_id, int service, String pets, String timeofrev, int cctvid) {
		try{
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("member_email", member_email);
			param.put("market_id", market_id);
			param.put("pets", pets);
			param.put("timeofrev", timeofrev);
			param.put("cctvid", cctvid);
			param.put("service", service);
			
			getSqlMapClient().insert("ReservDao.submitReserv", param);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
