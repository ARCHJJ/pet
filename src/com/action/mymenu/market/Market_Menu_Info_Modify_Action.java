package com.action.mymenu.market;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.market.MarketDao;

public class Market_Menu_Info_Modify_Action extends CommonAction {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String market_id = request.getParameter("market_id");
		String market_name = request.getParameter("market_name");
		String description = request.getParameter("description");
		String photos = request.getParameter("photos");
		String pets = request.getParameter("pets");
		String address = request.getParameter("address");
		String classes = request.getParameter("classes");
		String service = request.getParameter("service");

		updateMarket(market_id, market_name, description, photos, pets, address, classes, service);
		
		return "mymenu_shop_info.do";
	}

	private void updateMarket(String market_id,String market_name, String description, String photos, String pets,
			String address, String classes, String service) {
		// TODO Auto-generated method stub
		MarketDao.getInstance().updateMarket(market_id, market_name, description, photos, pets, address, classes, service);
	}
}
