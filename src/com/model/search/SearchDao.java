package com.model.search;

import java.util.ArrayList;

import com.model.dao.DaoCore;
import com.model.reservation.Market_addserviceBean;

public class SearchDao extends DaoCore {
	private static SearchDao instance = new SearchDao();
	public static SearchDao getInstance() {
		return instance;
	}
		
	public ArrayList<Market_addserviceBean> getSelectedOption(String[] selectOption) {
		ArrayList<Market_addserviceBean> mslist = new ArrayList<Market_addserviceBean>();
		try {
			mslist = (ArrayList<Market_addserviceBean>) getSqlMapClient().queryForList("SearchDao.getSelectedOption");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mslist;
	}
}
