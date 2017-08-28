package com.action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.AdminOnlyAction;
import com.model.admin.MemberDao;

public class MarketDeleteAction extends AdminOnlyAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int market_id = Integer.parseInt(request.getParameter("market_id"));

		MemberDao.getInstance().deleteMarket(market_id);

		return "marketmanage.do";
	}

}
