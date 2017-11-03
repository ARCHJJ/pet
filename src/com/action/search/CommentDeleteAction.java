package com.action.search;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.admin.MarketDao;

public class CommentDeleteAction extends CommonAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int order = Integer.parseInt(request.getParameter("order"));

		MarketDao.getInstance().deleteComment(order);

		return "market_feedback_View.do";
	}

}
