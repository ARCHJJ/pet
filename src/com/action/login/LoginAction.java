package com.action.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.controller.CommandAction;
import com.model.login.LoginBean;
import com.model.login.LoginDao;

public class LoginAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		System.out.println(request.getParameter("userid"));
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		
		LoginBean lb = LoginDao.getInstance().isUserInfoValid(userid, password);
		
		JSONObject json = new JSONObject();
		if(lb == null){//사용자 정보가 유효하지 않을 때.
			json.put("result", "false1");
		}else if(lb.getPower() == 0){//계정이 잠김 상태일때.
			json.put("result", "false2");
		}else{
			request.getSession().setAttribute("session", lb);//세션 생성
			json.put("result", true);
		}
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(json.toString());
		return null;
				
	}
}
