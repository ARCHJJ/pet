package com.model.admin;

import java.util.ArrayList;
import java.util.HashMap;

import com.model.dao.DaoCore;
import com.model.mymenu.market.MarketBean;
import com.model.mymenu.user.UserBean;

public class MarketDao extends DaoCore {

	private static MarketDao instance = new MarketDao();

	public static MarketDao getInstance() {
		return instance;
	}


	// 마켓 리스트 호출
	public ArrayList<MarketBean> getMarketList() {
		ArrayList<MarketBean> marketlist = new ArrayList<MarketBean>();
		try {
			marketlist = (ArrayList<MarketBean>) getSqlMapClient().queryForList("AdminDao.getMarketList");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return marketlist;

	}

	// 마켓 삭제
	public void deleteMarket(int market_id) {
		try {
			getSqlMapClient().delete("AdminDao.deleteMarket", market_id);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	//마케 수정
	public void updateMarket(int market_id, String email, String market_name, String description, String photos, String address, int cl_market, int cl_beauty, int cl_hotel, int cl_hospital,
			int ser_buypet, int ser_buystuff, int ser_hair, int ser_bath, int ser_rent, int ser_lodge, int ser_doctor, int ser_surgery, int pet_dog, int pet_cat, int pet_etc) {
		try {
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("market_id", market_id);
			param.put("email", email);
			param.put("market_name", market_name);
			param.put("description", description);
			param.put("photos", photos);
			param.put("address", address);
			param.put("pet_dog", pet_dog);
			param.put("pet_cat", pet_cat);
			param.put("pet_etc", pet_etc);
			param.put("cl_market", cl_market);
			param.put("cl_beauty", cl_beauty);
			param.put("cl_hotel", cl_hotel);
			param.put("cl_hospital", cl_hospital);
			param.put("ser_buypet", ser_buypet);
			param.put("ser_buystuff", ser_buystuff);
			param.put("ser_hair", ser_hair);
			param.put("ser_bath", ser_bath);
			param.put("ser_rent", ser_rent);
			param.put("ser_lodge", ser_lodge);
			param.put("ser_doctor", ser_doctor);
			param.put("ser_surgery", ser_surgery);

			getSqlMapClient().update("AdminDao.updateMarket", param);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//마켓 삽입
	public void insertMarket(String email) {
		try {
			getSqlMapClient().queryForObject("AdminDao.insertMarket");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
