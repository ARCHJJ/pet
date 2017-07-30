package com.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.CommandAction;
import com.model.login.LoginBean;

public class AdminOnlyAction implements CommandAction{

	
	//관리자만 접근할 수 있는 페이지일 경우 이 class를 상속한다.
	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub

		//세션검사
		if(request.getSession().getAttribute("session") == null){
			return "sessionOut.jsp";
		}else{
			if(((LoginBean) request.getSession().getAttribute("session")).getPower() != 701){//관리자 권한이 아닐경우
				request.getSession().invalidate();
				return "injustice.jsp";
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
	}
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		return null;
	}
}
