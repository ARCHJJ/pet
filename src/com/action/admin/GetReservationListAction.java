package com.action.admin;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.AdminOnlyAction;
import com.model.admin.ReservationDao;
import com.model.mymenu.user.ReservBean;

public class GetReservationListAction extends AdminOnlyAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		ArrayList<ReservBean> reservationlist = new ArrayList<ReservBean>();
		reservationlist=ReservationDao.getInstance().getReservationList();
		
		request.setAttribute("reservationlist", reservationlist);
		
		return "view/admin/reservation_list.jsp";
	}

}
