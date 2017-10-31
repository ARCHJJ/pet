package com.action.reservation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.login.LoginBean;
import com.model.mymenu.user.ReservDao;

public class Reservation_SubmitAction extends CommonAction {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String userid = ((LoginBean) request.getSession().getAttribute("session")).getEmail();
		int market_id = Integer.parseInt(request.getParameter("market_id"));
		int service = Integer.parseInt(request.getParameter("reservation_service"));
		String pets = request.getParameter("pets");
		String timeofrev = request.getParameter("timeofrev");
		int cctvid = 0;

		submit(userid, market_id, service, pets, timeofrev, cctvid);
		
		return "User_Menu_Reserv.do";
	}
	private void submit(String member_email, int market_id, int service, String pets, String timeofrev, int cctvid) {
		ReservDao.getInstance().submitReserv(member_email, market_id, service, pets, timeofrev, cctvid);
	}
	
}