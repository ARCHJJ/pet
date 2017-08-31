package com.action.mymenu.market;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.market.ItemDao;

public class Market_Menu_Item_Insert_Action extends CommonAction{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		String market_id = request.getParameter("market_id");
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		String photos = request.getParameter("photos");
		String price = request.getParameter("price");
		
		insertItem(market_id, name, description, photos, price);
		
		return "mymenu_shop_item.do";
	}

	private void insertItem(String market_id, String name, String description, String photos,
			String price) {
		// TODO Auto-generated method stub
		ItemDao.getInstance().insertItem(market_id, name, description, photos, price);
	}
}
