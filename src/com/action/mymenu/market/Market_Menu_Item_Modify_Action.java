package com.action.mymenu.market;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.market.ItemDao;

public class Market_Menu_Item_Modify_Action extends CommonAction{
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		int idx = Integer.parseInt(request.getParameter("idx"));
		String market_id = request.getParameter("market_id");
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		String photos = request.getParameter("photos");
		String price = request.getParameter("price");
		
		updateItem(idx, market_id, name, description, photos, price);
		
		return "mymenu_shop_item.do";
	}

	private void updateItem(int idx, String market_id, String name, String description, String photos,
			String price) {
		// TODO Auto-generated method stub
		ItemDao.getInstance().updateItem(idx, market_id, name, description, photos, price);
	}
}
