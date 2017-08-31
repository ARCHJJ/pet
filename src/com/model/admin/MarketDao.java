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
	public void updateMarket(int market_id, String email, String market_name, String description, String photos, int pets, String address, int classes, int service) {
		try {
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("market_id", market_id);
			param.put("email", email);
			param.put("market_name", market_name);
			param.put("description", description);
			param.put("photos", photos);
			param.put("pets", pets);
			param.put("address", address);
			param.put("classes", classes);
			param.put("service", service);

			getSqlMapClient().update("AdminDao.updateMarket", param);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
