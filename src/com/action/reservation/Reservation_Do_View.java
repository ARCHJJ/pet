package com.action.reservation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.login.LoginBean;
import com.model.mymenu.user.ReservDao;
import com.model.mymenu.user.UserBean;
import com.model.mymenu.user.UserDao;
import com.model.reservation.Market_addserviceBean;

public class Reservation_Do_View extends CommonAction{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String userid = ((LoginBean) request.getSession().getAttribute("session")).getEmail();
		int idx = Integer.parseInt(request.getParameter("market_id"));
		String name = request.getParameter("name");

		UserBean ub = new UserBean();
		ub = UserDao.getInstance().getUserInfo(userid);
		Market_addserviceBean mb = new Market_addserviceBean();
		mb = ReservDao.getInstance().needReservInfo(idx, name);

		request.getSession().setAttribute("ub", ub);
		request.getSession().setAttribute("mb", mb);

		return "view/reservation/reserv_select";
	}
}
