package com.action.search;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.admin.MarketDao;

public class CommentUpdateAction extends CommonAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String content = request.getParameter("content");
		int order = Integer.parseInt(request.getParameter("order"));

		MarketDao.getInstance().updateComment(order, content);

		return "market_feedback_View.do";
	}

}
