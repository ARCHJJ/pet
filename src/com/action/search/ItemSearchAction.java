package com.action.search;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.board.BoardBean;
import com.model.mymenu.market.ItemBean;
import com.model.mymenu.market.ItemDao;

public class ItemSearchAction extends CommonAction {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String word = request.getParameter("word2");

		ArrayList<ItemBean> iblist = new ArrayList<ItemBean>();
		iblist=ItemDao.getInstance().searchItemList(word);
		
		request.getSession().setAttribute("iblist", iblist);
		
		return "view/search/itemSearch.jsp";
	}

}
