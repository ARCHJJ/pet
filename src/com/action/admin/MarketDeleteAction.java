package com.action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.AdminOnlyAction;
import com.model.admin.MarketDao;

public class MarketDeleteAction extends AdminOnlyAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int market_id = Integer.parseInt(request.getParameter("market_id"));

		MarketDao.getInstance().deleteMarket(market_id);

		return "marketmanage.do";
	}

}
