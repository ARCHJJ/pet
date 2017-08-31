package com.model.admin;

import java.util.ArrayList;

import com.model.dao.DaoCore;
import com.model.mymenu.user.ReservBean;

public class ReservationDao extends DaoCore {

	private static ReservationDao instance = new ReservationDao();

	public static ReservationDao getInstance() {
		return instance;
	}

	public void deleteReservation(int rev_idx) {
		// TODO Auto-generated method stub
		
	}

	public ArrayList<ReservBean> getReservationList() {
		// TODO Auto-generated method stub
		return null;
	}


	public void updateReservation(int market_id, String email, String market_name, String description, String photos,
			int pets, String address, int classes, int service) {
		// TODO Auto-generated method stub
		
	}

	
}
