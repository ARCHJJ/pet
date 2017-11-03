package com.action.search;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.action.CommonAction;
import com.model.admin.MarketDao;
import com.model.login.LoginBean;

public class CommentDeleteAction extends CommonAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int order = Integer.parseInt(request.getParameter("order"));
		String email = request.getParameter("email");
		String current_email = ((LoginBean)request.getSession().getAttribute("session")).getEmail();
		
		JSONObject json = new JSONObject();
		if(email.equals(current_email)){
			MarketDao.getInstance().deleteComment(order);
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
