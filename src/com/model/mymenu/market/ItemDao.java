package com.model.mymenu.market;

import java.util.ArrayList;

import org.json.simple.ItemList;

import com.model.dao.DaoCore;

public class ItemDao extends DaoCore{
	private static ItemDao instance = new ItemDao();
	public static ItemDao getInstance() {return instance;}
	
	public ArrayList<ItemBean> getItemList(String email) {
		ArrayList<ItemBean> itemlist = new ArrayList<ItemBean>();
		try {
			itemlist = (ArrayList<ItemBean>) getSqlMapClient().queryForList("ItemDao.getItemList", email);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return itemlist;
	}

}