package com.model.mymenu.market;

import java.util.ArrayList;
import java.util.HashMap;

import com.model.dao.DaoCore;

public class MarketDao extends DaoCore {
	private static MarketDao instance = new MarketDao();

	public static MarketDao getInstance() {
		return instance;
	}

	public MarketBean isMarketInfoValid(String email) {
		MarketBean mb = new MarketBean();
		try {
			mb = (MarketBean) getSqlMapClient().queryForObject("MarketDao.isMarketInfoValid", email);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mb;
	}

	public void updateMarket(String market_id, String market_name, String description, String photos, String pets,
			String address, String classes, String service) {
		try {
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("market_id", market_id);
			param.put("market_name", market_name);
			param.put("description", description);
			param.put("photos", photos);
			param.put("pets", pets);
			param.put("address", address);
			param.put("classes", classes);
			param.put("service", service);

			getSqlMapClient().update("MarketDao.updateMarket", param);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<MarketBean> searchMarketList(String word) {
		// TODO Auto-generated method stub
		ArrayList<MarketBean> marketList = new ArrayList<MarketBean>();
		try {
			marketList = (ArrayList<MarketBean>) getSqlMapClient().queryForList("MarketDao.searchMarketList", "%"+word+"%");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return marketList;
	}
	
}
