package com.action.search;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.search.Market_addfeedbackBean;
import com.model.search.Market_feedbackDao;

public class Select_Market_View  extends CommonAction{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		int idx = Integer.parseInt(request.getParameter("market_id"));
		
		ArrayList<Market_addfeedbackBean> mflist =  new ArrayList<Market_addfeedbackBean>();
		mflist = Market_feedbackDao.getInstance().getmarketEvaluate(idx);
		
		request.getSession().setAttribute("mflist", mflist);
		
		return "view/search/marketInfoView.jsp";
	}
}
