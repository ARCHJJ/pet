package com.action.mymenu.market;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.login.LoginBean;
import com.model.mymenu.market.MarketBean;
import com.model.mymenu.market.MarketDao;

public class MenuMarketAction extends CommonAction {
	public String requestPro(HttpServletRequest request, 
			HttpServletResponse response) throws Throwable {
		String userid =  ((LoginBean) request.getSession().getAttribute("session")).getEmail();

		MarketBean mb = MarketDao.getInstance().isMarketInfoValid(userid);
		request.getSession().setAttribute("mb", mb);
		return "view/Mymenu/mymenu_market.jsp";
	}
}
