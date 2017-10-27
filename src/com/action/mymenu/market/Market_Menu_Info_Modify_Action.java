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
		String address = request.getParameter("address");
		String pet_dog = request.getParameter("pet_dog");
		String pet_cat = request.getParameter("pet_cat");
		String pet_etc = request.getParameter("pet_etc");
		String cl_market = request.getParameter("cl_market");
		String cl_beauty = request.getParameter("cl_beauty");
		String cl_hotel = request.getParameter("cl_hotel");
		String cl_hospital = request.getParameter("cl_hospital");
		String ser_buypet = request.getParameter("ser_buypet");
		String ser_buystuff = request.getParameter("ser_buystuff");
		String ser_hair = request.getParameter("ser_hair");
		String ser_bath = request.getParameter("ser_bath");
		String ser_rent = request.getParameter("ser_rent");
		String ser_lodge = request.getParameter("ser_lodge");
		String ser_doctor = request.getParameter("ser_doctor");
		String ser_surgery = request.getParameter("ser_surgery");
		

		updateMarket(market_id, market_name, description, photos, address, pet_dog, pet_cat, pet_etc, cl_market, cl_beauty,
				cl_hotel, cl_hospital, ser_buypet, ser_buystuff, ser_hair, ser_bath, ser_rent, ser_lodge, ser_doctor, ser_surgery);
		
		return "mymenu_shop_info.do";
	}

	private void updateMarket(String market_id, String market_name, String description, String photos, String address,
			String pet_dog, String pet_cat, String pet_etc, String cl_market, String cl_beauty, String cl_hotel, String cl_hospital,
			String ser_buypet, String ser_buystuff, String ser_hair, String ser_bath, String ser_rent, String ser_lodge, String ser_doctor,
			String ser_surgery) {
		// TODO Auto-generated method stub
		MarketDao.getInstance().updateMarket(market_id, market_name, description, photos, address, pet_dog, pet_cat, pet_etc, cl_market, cl_beauty,
				cl_hotel, cl_hospital, ser_buypet, ser_buystuff, ser_hair, ser_bath, ser_rent, ser_lodge, ser_doctor, ser_surgery);
	}
}
