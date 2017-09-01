package com.action.mymenu.market;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.user.ReservDao;

public class Market_Menu_Reserv_Delete_Action extends CommonAction{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String rev_idx = request.getParameter("rev_idx");

		ReservDao.getInstance().deleteReservInfo(rev_idx);
		
		return "mymenu_shop_reserv.do";
	}

}
