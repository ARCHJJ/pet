package com.action.search;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.controller.CommandAction;
import com.model.mymenu.market.MarketBean;
import com.model.mymenu.market.MarketDao;
import com.model.search.Market_feedbackBean;

public class Select_Market_View implements CommandAction{
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		int idx = Integer.parseInt(request.getParameter("market_id"));
		
		MarketBean mb = new MarketBean();
		mb = MarketDao.getInstance().getMarketInfo(idx);
		
		ArrayList<Market_feedbackBean> mflist =  new ArrayList<Market_feedbackBean>();
		mflist = MarketDao.getInstance().getmarketEvaluate(idx);
		
		request.setAttribute("mb", mb);
		request.setAttribute("mflist", mflist);
		
		return "view/search/marketInfoView.jsp";
	}
}
