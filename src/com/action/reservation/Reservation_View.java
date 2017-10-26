package com.action.reservation;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.market.ItemBean;
import com.model.mymenu.market.ItemDao;

public class Reservation_View extends CommonAction{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub

		int idx = Integer.parseInt(request.getParameter("market_id"));
		
		ArrayList<ItemBean> mblist = new ArrayList<ItemBean>();
		mblist = ItemDao.getInstance().getreservinfo(idx);
		
		request.getSession().setAttribute("mblist", mblist);
		
		return "view/reservation/reservation.jsp";
	}
}
