package com.model.reservation;

import java.util.ArrayList;

import com.model.dao.DaoCore;

public class Market_serviceDao extends DaoCore{
	private static Market_serviceDao instance = new Market_serviceDao();
	public static Market_serviceDao getInstance(){return instance;}
	
	public ArrayList<Market_serviceBean> getreservinfo(int idx) {
		ArrayList<Market_serviceBean> mb = new ArrayList<Market_serviceBean>();
		try{
			mb = (ArrayList<Market_serviceBean>) getSqlMapClient().queryForList("Market_serviceDao.getreservinfo", idx);
		}catch(Exception e){
			e.printStackTrace();
		}
		return mb;
	}
	
}
