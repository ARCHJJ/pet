package com.action.mymenu.market;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.market.MarketBean;
import com.model.mymenu.market.MarketDao;

public class MenuMarketAction extends CommonAction {
	public String requestPro(HttpServletRequest request, 
			HttpServletResponse response) throws Throwable {
		String userid = request.getSession().getId();

		MarketBean mb = MarketDao.getInstance().isMarketInfoValid(userid);
		
		return "WebContent/WEB-INF/Mymenu/mymenu_market.jsp";
	}
}
