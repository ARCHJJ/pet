package com.action.search;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.admin.MarketDao;

public class CommentWirteAction extends CommonAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String content = request.getParameter("content");
		
		MarketDao.getInstance().insertComment(content);
		
		return "market_feedback_View.do";
	}

}
