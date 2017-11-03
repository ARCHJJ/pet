package com.action.search;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.admin.MarketDao;
import com.model.login.LoginBean;

public class CommentInsertAction extends CommonAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		int market_id = Integer.parseInt(request.getParameter("market_id"));
		String content = request.getParameter("content");
		String email = ((LoginBean)request.getSession().getAttribute("session")).getEmail();
		
		MarketDao.getInstance().insertComment(content, market_id, email);
		
		
		request.setAttribute("url", "market_feedback_View.do?market_id="+market_id);
		return "redirect.jsp";
	}

}
