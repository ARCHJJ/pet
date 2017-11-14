package com.action.mymenu.market;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.login.LoginBean;
import com.model.mymenu.user.ReservBean;
import com.model.mymenu.user.ReservDao;
import com.model.mymenu.user.Reserv_MarketBean;

public class Market_Menu_Reserv_Action extends CommonAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		String userid = ((LoginBean) request.getSession().getAttribute("session")).getEmail();
		
		ArrayList<Reserv_MarketBean> rblist = new ArrayList<Reserv_MarketBean>();
		rblist = ReservDao.getInstance().getMarketReservList(userid);
		
		request.setAttribute("rblist", rblist);
		return "view/Mymenu/Market/Market_Menu_Reserv_View.jsp";
	}
}
