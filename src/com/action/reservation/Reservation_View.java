package com.action.reservation;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.reservation.Market_serviceBean;
import com.model.reservation.Market_serviceDao;

public class Reservation_View extends CommonAction{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub

		int idx = Integer.parseInt(request.getParameter("market_id"));
		
		ArrayList<Market_serviceBean> mblist = new ArrayList<Market_serviceBean>();
		mblist = Market_serviceDao.getInstance().getreservinfo(idx);
		
		request.getSession().setAttribute("mblist", mblist);
		
		return "view/reservation/reservation.jsp";
	}
}
