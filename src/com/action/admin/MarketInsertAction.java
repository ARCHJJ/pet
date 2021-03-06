package com.action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.AdminOnlyAction;
import com.model.admin.MarketDao;
import com.model.admin.MemberDao;

public class MarketInsertAction extends AdminOnlyAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String email = request.getParameter("email");
		
		MemberDao.getInstance().updatePower(email, 200);
		MarketDao.getInstance().insertMarket(email);
		return "";
	}
}
