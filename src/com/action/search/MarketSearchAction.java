package com.action.search;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.board.BoardBean;
import com.model.mymenu.market.MarketBean;
import com.model.mymenu.market.MarketDao;
import com.model.mymenu.user.WriteDao;

public class MarketSearchAction extends CommonAction {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String word = request.getParameter("word");

		ArrayList<MarketBean> mblist = new ArrayList<MarketBean>();
		mblist=MarketDao.getInstance().searchMarketList(word);
		
		request.getSession().setAttribute("mblist", mblist);
		
		return "view/search/marketSearch.jsp";
	}

}
