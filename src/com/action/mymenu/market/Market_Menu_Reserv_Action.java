package com.action.mymenu.market;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.login.LoginBean;
import com.model.mymenu.user.ReservBean;
import com.model.mymenu.user.ReservDao;

public class Market_Menu_Reserv_Action extends CommonAction{

	@Override
	public String requestPro(HttpServletRequest request, 
			HttpServletResponse response) throws Throwable {
		
		String userid = ((LoginBean) request.getSession().getAttribute("session")).getEmail();
		
		ArrayList<ReservBean> rblist = new ArrayList<ReservBean>();
		rblist = ReservDao.getInstance().getMarketReservList(userid);
		
		request.getSession().setAttribute("rblist", rblist);
		return "view/Mymenu/Market/Market_Menu_Reserv_View.jsp";
	}
}
