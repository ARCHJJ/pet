package com.model.mymenu.market;

import com.model.dao.DaoCore;

public class ItemDao extends DaoCore{
	private static ItemDao instance = new ItemDao();
	public static ItemDao getInstance() {return instance;}
	
	public ItemBean getItemInfoValid(String email) {
		ItemBean ib = new ItemBean();
		try {
			ib = (ItemBean) getSqlMapClient().queryForObject("ItemDao.getItemInfoValid", email);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return ib;
	}

}
