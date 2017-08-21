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
			mb  = (MarketBean) getSqlMapClient().queryForObject("MarketDao.isMarketInfoValid", email);
		}catch(Exception e){
			e.printStackTrace();
		}
		return mb;
	}
}

