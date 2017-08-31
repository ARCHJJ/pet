package com.action.admin;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.AdminOnlyAction;
import com.model.admin.MarketDao;
import com.model.mymenu.market.MarketBean;

public class GetMarketListAction extends AdminOnlyAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		ArrayList<MarketBean> marketlist = new ArrayList<MarketBean>();
		marketlist=MarketDao.getInstance().getMarketList();
		
		request.setAttribute("marketlist", marketlist);
		
		return "view/admin/market_list.jsp";
	}

}
