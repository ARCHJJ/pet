package com.model.search;

import java.util.ArrayList;

import com.model.dao.DaoCore;

public class Market_feedbackDao  extends DaoCore{
	private static Market_feedbackDao instance = new Market_feedbackDao();
	public static Market_feedbackDao getInstance() {return instance;}
	
	public ArrayList<Market_addfeedbackBean> getmarketEvaluate(int idx) {
		ArrayList<Market_addfeedbackBean> mflist = new ArrayList<Market_addfeedbackBean>();
		try{
			mflist = (ArrayList<Market_addfeedbackBean>) getSqlMapClient().queryForList("Market_feedbackDao.getmarketEvaluate", idx);
		}catch(Exception e){
			e.printStackTrace();
		}
		return mflist;
	}

}
