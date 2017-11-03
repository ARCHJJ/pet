package com.model.admin;

import java.util.ArrayList;
import java.util.HashMap;

import com.model.dao.DaoCore;
import com.model.mymenu.user.ReservBean;
import com.model.mymenu.user.Reserv_MarketBean;
import com.model.mymenu.user.UserBean;

public class ReservationDao extends DaoCore {

	private static ReservationDao instance = new ReservationDao();

	public static ReservationDao getInstance() {
		return instance;
	}

	public void deleteReservation(int rev_idx) {
		try {
			getSqlMapClient().delete("AdminDao.deleteReservation", rev_idx);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public ArrayList<Reserv_MarketBean> getReservationList() {
		ArrayList<Reserv_MarketBean> reservationlist = new ArrayList<Reserv_MarketBean>();
		try {
			reservationlist = (ArrayList<Reserv_MarketBean>) getSqlMapClient().queryForList("AdminDao.getReservationList");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return reservationlist;
	}


	public void updateReservation(int rev_idx, String member_email, int market_id, int service, String pets, String timeofrev, String date, int cctvid) {
		try {
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("rev_idx", rev_idx);
			param.put("member_email", member_email);
			param.put("market_id", market_id);
			param.put("service", service);
			param.put("pets", pets);
			param.put("timeofrev", timeofrev);
			param.put("date", date);
			param.put("cctvid", cctvid);

			getSqlMapClient().update("AdminDao.updateReservation", param);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
}
