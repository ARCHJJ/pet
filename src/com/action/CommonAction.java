package com.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.CommandAction;
import com.model.login.LoginBean;

public class CommonAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		//세션검사
		if(request.getSession().getAttribute("session") == null){
			return "sessionOut.jsp";
		}else{
			//로그기록
			String userid = ((LoginBean) request.getSession().getAttribute("session")).getEmail();
			String url = request.getRequestURI();
			String query = request.getQueryString();
			String ip = request.getRemoteAddr();
			
			//LogDao.getInstance().insertLog(url, query, ip, userid);
			
			String nextpage = null;
			nextpage = execute(request,response);
			return nextpage;
		}
	}
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		return null;
	}
}
