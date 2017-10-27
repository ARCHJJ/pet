package com.model.search;

import java.util.ArrayList;
import java.util.HashMap;

import com.model.dao.DaoCore;
import com.model.mymenu.market.MarketBean;
import com.model.reservation.Market_addserviceBean;

public class SearchDao extends DaoCore {
	private static SearchDao instance = new SearchDao();
	public static SearchDao getInstance() {
		return instance;
	}
		
	public ArrayList<Market_addserviceBean> getSelectedOption(int[] arr) {
		ArrayList<Market_addserviceBean> mslist = new ArrayList<Market_addserviceBean>();
		HashMap<String, Object> param = new HashMap<String, Object>();
		try {
			if(arr[0]==1)
				param.put("cl_market", 1);
			else
				param.put("cl_market", 0);
			if(arr[1]==1)
				param.put("cl_beauty", 1);
			else
				param.put("cl_beauty", 0);
			if(arr[2]==1)
				param.put("cl_hotel", 1);
			else
				param.put("cl_hotel", 0);
			if(arr[3]==1)
				param.put("cl_hospital", 1);
			else
				param.put("cl_hospital", 0);
			if(arr[4]==1)
				param.put("ser_buypet", 1);
			else
				param.put("ser_buypet", 0);
			if(arr[5]==1)
				param.put("ser_buystuff", 1);
			else
				param.put("ser_buystuff", 0);
			if(arr[6]==1)
				param.put("ser_hair", 1);
			else
				param.put("ser_hair", 0);
			if(arr[7]==1)
				param.put("ser_bath", 1);
			else
				param.put("ser_bath", 0);
			if(arr[8]==1)
				param.put("ser_rent", 1);
			else
				param.put("ser_rent", 0);
			if(arr[9]==1)
				param.put("ser_lodge", 1);
			else
				param.put("ser_lodge", 0);
			if(arr[10]==1)
				param.put("ser_doctor", 1);
			else
				param.put("ser_doctor", 0);
			if(arr[11]==1)
				param.put("ser_surgery", 1);
			else
				param.put("ser_surgery", 0);
			if(arr[12]==1)
				param.put("pet_dog", 1);
			else
				param.put("pet_dog", 0);
			if(arr[13]==1)
				param.put("pet_cat", 1);
			else
				param.put("pet_cat", 0);
			if(arr[14]==1)
				param.put("pet_etc", 1);
			else
				param.put("pet_etc", 0);
			mslist = (ArrayList<Market_addserviceBean>) getSqlMapClient().queryForList("SearchDao.getSelectedOption", param);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mslist;
	}
	
	public ArrayList<MarketBean> SelectMarketOption(int[] arr) {
		ArrayList<MarketBean> mblist = new ArrayList<MarketBean>();
		HashMap<String, Object> param = new HashMap<String, Object>();
		try {
			if(arr[0]==1)
				param.put("cl_market", 1);
			else
				param.put("cl_market", 0);
			if(arr[1]==1)
				param.put("cl_beauty", 1);
			else
				param.put("cl_beauty", 0);
			if(arr[2]==1)
				param.put("cl_hotel", 1);
			else
				param.put("cl_hotel", 0);
			if(arr[3]==1)
				param.put("cl_hospital", 1);
			else
				param.put("cl_hospital", 0);
			if(arr[4]==1)
				param.put("ser_buypet", 1);
			else
				param.put("ser_buypet", 0);
			if(arr[5]==1)
				param.put("ser_buystuff", 1);
			else
				param.put("ser_buystuff", 0);
			if(arr[6]==1)
				param.put("ser_hair", 1);
			else
				param.put("ser_hair", 0);
			if(arr[7]==1)
				param.put("ser_bath", 1);
			else
				param.put("ser_bath", 0);
			if(arr[8]==1)
				param.put("ser_rent", 1);
			else
				param.put("ser_rent", 0);
			if(arr[9]==1)
				param.put("ser_lodge", 1);
			else
				param.put("ser_lodge", 0);
			if(arr[10]==1)
				param.put("ser_doctor", 1);
			else
				param.put("ser_doctor", 0);
			if(arr[11]==1)
				param.put("ser_surgery", 1);
			else
				param.put("ser_surgery", 0);
			if(arr[12]==1)
				param.put("pet_dog", 1);
			else
				param.put("pet_dog", 0);
			if(arr[13]==1)
				param.put("pet_cat", 1);
			else
				param.put("pet_cat", 0);
			if(arr[14]==1)
				param.put("pet_etc", 1);
			else
				param.put("pet_etc", 0);
			mblist = (ArrayList<MarketBean>) getSqlMapClient().queryForList("SearchDao.SelectMarketOption", param);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mblist;
	}
}
