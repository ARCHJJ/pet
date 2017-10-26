package com.action.search;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.market.ItemBean;
import com.model.mymenu.market.ItemDao;
import com.model.mymenu.market.MarketBean;
import com.model.mymenu.market.MarketDao;

public class SearchAction extends CommonAction {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String word = request.getParameter("word");
		int value = Integer.parseInt(request.getParameter("combobox"));
		
		if(value == 1) {
			ArrayList<MarketBean> mblist = new ArrayList<MarketBean>();
			mblist=MarketDao.getInstance().searchMarketList(word);
			
			request.getSession().setAttribute("mblist", mblist);
			return "view/search/marketSearch.jsp";
		}
		else { 
			ArrayList<ItemBean> iblist = new ArrayList<ItemBean>();
			iblist=ItemDao.getInstance().searchItemList(word);
			
			request.getSession().setAttribute("iblist", iblist);
			return "view/search/itemSearch.jsp";
		}
	}

}
