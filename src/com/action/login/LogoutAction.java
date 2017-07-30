package com.action.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;

public class LogoutAction extends CommonAction{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws Throwable {
		// TODO Auto-generated method stub
		
		request.getSession().invalidate();
		request.setAttribute("url", "main.do");
		
		return "redirect.jsp";
	}
}
