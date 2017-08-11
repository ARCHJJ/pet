package com.mymenu.market;

import java.util.HashMap;

import com.model.dao.DaoCore;
import com.model.login.LoginBean;
import com.model.login.LoginDao;
import com.mymenu.market.MarketBean;

public class MarketDao extends DaoCore{
	private static MarketDao instance = new MarketDao();
	public static MarketDao getInstance(){return instance;}
	
	public MarketBean isMarketInfoValid(int market_id, String email, String market_name) {
		MarketBean mb = new MarketBean();
		try{
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("userid", market_id);
			param.put("password", email);
			
			mb  = (MarketBean) getSqlMapClient().queryForObject("MarketDao.isUserInfoValid", param);
		}catch(Exception e){
			e.printStackTrace();
		}
		return mb;
	}
}

