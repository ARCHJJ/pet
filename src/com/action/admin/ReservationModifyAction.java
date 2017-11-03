package com.action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.AdminOnlyAction;
import com.model.admin.MarketDao;
import com.model.admin.MemberDao;
import com.model.admin.ReservationDao;

public class ReservationModifyAction extends AdminOnlyAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int rev_idx = Integer.parseInt(request.getParameter("rev_idx"));
		String member_email = request.getParameter("member_email");
		int market_id = Integer.parseInt(request.getParameter("market_id"));
		int service = Integer.parseInt(request.getParameter("item_idx"));
		String pets = request.getParameter("pets");
		String timeofrev = request.getParameter("timeofrev");
		String date = request.getParameter("date");
		int cctvid = Integer.parseInt(request.getParameter("cctvid"));
		
		updateReservation(rev_idx, member_email, market_id, service, pets, timeofrev, date, cctvid);
		return "reservemanage.do";
	}

	private void updateReservation(int rev_idx, String member_email, int market_id, int service, String pets, String timeofrev, String date, int cctvid) {
		ReservationDao.getInstance().updateReservation(rev_idx, member_email, market_id, service, pets, timeofrev, date, cctvid);
	}
}
