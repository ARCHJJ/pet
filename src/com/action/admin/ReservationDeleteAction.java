package com.action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.AdminOnlyAction;
import com.model.admin.ReservationDao;

public class ReservationDeleteAction extends AdminOnlyAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int rev_idx = Integer.parseInt(request.getParameter("rev_idx"));

		ReservationDao.getInstance().deleteReservation(rev_idx);

		return "reservationmanage.do";
	}

}
