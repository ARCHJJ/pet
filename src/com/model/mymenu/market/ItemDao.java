package com.model.mymenu.market;

import com.model.dao.DaoCore;

public class ItemDao extends DaoCore{
	private static ItemDao instance = new ItemDao();
	public static ItemDao getInstance() {return instance;}
	
	public ItemBean getItemInfoValid(int market_id) {
		ItemBean ib = new ItemBean();
		try {
			ib = (ItemBean) getSqlMapClient().queryForObject("ItemDao.getItemInfoValid", market_id);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return ib;
	}

}
