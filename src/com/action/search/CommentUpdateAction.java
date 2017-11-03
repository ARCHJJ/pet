package com.action.search;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.action.CommonAction;
import com.model.admin.MarketDao;
import com.model.login.LoginBean;

public class CommentUpdateAction extends CommonAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String content = request.getParameter("content");
		int order = Integer.parseInt(request.getParameter("order"));
		String email = request.getParameter("email");
		String current_email = ((LoginBean)request.getSession().getAttribute("session")).getEmail();
		System.out.println("debug  "+content);
		JSONObject json = new JSONObject();
		if(email.equals(current_email)){
			MarketDao.getInstance().updateComment(order, content);
			json.put("result", true);
		}else{
			json.put("result", "false1");
			
		}
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(json.toString());
		return null;
	}

}
