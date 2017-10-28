package com.action.search;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.controller.CommandAction;
import com.model.mymenu.market.MarketBean;
import com.model.mymenu.market.MarketDao;

public class MarketCompareAction implements CommandAction{
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		int[] idx = new int[3];
		int i = 0;
		
		if (request.getParameter("selectMarket") != null) {
			String checkBoxes[] = request.getParameterValues("selectMarket");
			for (String checkbox : checkBoxes){
				idx[i] = Integer.parseInt(checkbox);
				i++;
			}
		}

		MarketBean mb1 = new MarketBean();
		MarketBean mb2 = new MarketBean();
		MarketBean mb3 = new MarketBean();

		mb1 = MarketDao.getInstance().getMarketInfo(idx[0]);
		mb2 = MarketDao.getInstance().getMarketInfo(idx[1]);
		mb3 = MarketDao.getInstance().getMarketInfo(idx[2]);

		request.setAttribute("mb1", mb1);
		request.setAttribute("mb2", mb2);
		request.setAttribute("mb3", mb3);

		return "view/search/marketCompare.jsp";
	}
}
