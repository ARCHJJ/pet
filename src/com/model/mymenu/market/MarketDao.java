package com.model.mymenu.market;

import java.util.HashMap;

import com.model.dao.DaoCore;
import com.model.login.LoginBean;
import com.model.login.LoginDao;
import com.model.mymenu.market.MarketBean;

public class MarketDao extends DaoCore{
	private static MarketDao instance = new MarketDao();
	public static MarketDao getInstance(){return instance;}
	
	public MarketBean isMarketInfoValid(String email) {
		MarketBean mb = new MarketBean();
		try{
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("email", email);
			
			mb  = (MarketBean) getSqlMapClient().queryForObject("MarketDao.isUserInfoValid", param);
		}catch(Exception e){
			e.printStackTrace();
		}
		return mb;
	}
}

