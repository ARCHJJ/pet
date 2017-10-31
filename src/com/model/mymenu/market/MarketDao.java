package com.model.mymenu.market;

import java.util.ArrayList;
import java.util.HashMap;

import com.model.dao.DaoCore;
import com.model.reservation.Market_addserviceBean;
import com.model.search.Market_feedbackBean;

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

	public MarketBean getMarketInfo(int idx) {
		MarketBean mb = new MarketBean();
		try {
			mb = (MarketBean) getSqlMapClient().queryForObject("MarketDao.getMarketInfo", idx);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mb;
	}

	public void updateMarket(int market_id, String market_name, String description, String photos, String address, int cl_market, int cl_beauty, int cl_hotel, int cl_hospital,
			int ser_buypet, int ser_buystuff, int ser_hair, int ser_bath, int ser_rent, int ser_lodge, int ser_doctor, int ser_surgery, int pet_dog, int pet_cat, int pet_etc) {
		try {
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("market_id", market_id);
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

			getSqlMapClient().update("MarketDao.updateMarket", param);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Market_feedbackBean> getmarketEvaluate(int idx) {
		ArrayList<Market_feedbackBean> mflist = new ArrayList<Market_feedbackBean>();
		try {
			mflist = (ArrayList<Market_feedbackBean>) getSqlMapClient().queryForList("MarketDao.getmarketEvaluate",
					idx);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mflist;
	}
}
