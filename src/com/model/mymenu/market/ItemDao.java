package com.model.mymenu.market;

import java.util.ArrayList;
import java.util.HashMap;

import com.model.dao.DaoCore;
import com.model.reservation.Market_addserviceBean;

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
	
	public void updateItem(int idx, String name, String description, String photos,
			String price) {
		try {
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("idx", idx);
			param.put("name", name);
			param.put("description", description);
			param.put("photos", photos);
			param.put("price", price);
			
			getSqlMapClient().update("ItemDao.updateItem", param);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	public void insertItem(String market_id, String name, String description, String photos, String price) {
		// TODO Auto-generated method stub
		try {
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("market_id", market_id);
			param.put("name", name);
			param.put("description", description);
			param.put("photos", photos);
			param.put("price", price);
			
			getSqlMapClient().insert("ItemDao.insertItem", param);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteItemInfo(String idx) {
		try{
			getSqlMapClient().delete("ItemDao.deleteItemInfo", idx);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	public ArrayList<Market_addserviceBean> searchItemList(String word) {
		ArrayList<Market_addserviceBean> itemlist = new ArrayList<Market_addserviceBean>();
		try {
			itemlist = (ArrayList<Market_addserviceBean>) getSqlMapClient().queryForList("ItemDao.searchItemList", "%"+word+"%");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return itemlist;
	}
	
	public ArrayList<ItemBean> getreservinfo(int idx) {
		ArrayList<ItemBean> mb = new ArrayList<ItemBean>();
		try{
			mb = (ArrayList<ItemBean>) getSqlMapClient().queryForList("Market_serviceDao.getreservinfo", idx);
		}catch(Exception e){
			e.printStackTrace();
		}
		return mb;
	}

}