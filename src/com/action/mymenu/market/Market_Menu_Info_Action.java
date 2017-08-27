package com.action.mymenu.market;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.login.LoginBean;
import com.model.mymenu.market.MarketBean;
import com.model.mymenu.market.MarketDao;

public class Market_Menu_Info_Action extends CommonAction {
	public String requestPro(HttpServletRequest request, 
			HttpServletResponse response) throws Throwable {
		String userid =  ((LoginBean) request.getSession().getAttribute("session")).getEmail();

		MarketBean mb = MarketDao.getInstance().isMarketInfoValid(userid);
		request.getSession().setAttribute("mb", mb);
		return "view/Mymenu/Market/Market_Menu_Info_View.jsp";
	}
}
