package com.action.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.action.CommonAction;
import com.model.admin.MarketDao;
import com.model.board.Board_replyDao;
import com.model.login.LoginBean;

public class ReplyUpdateAction extends CommonAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String content = request.getParameter("content");
		int idx = Integer.parseInt(request.getParameter("idx"));
		String email = request.getParameter("email");
		String current_email = ((LoginBean)request.getSession().getAttribute("session")).getEmail();
		
		JSONObject json = new JSONObject();
		if(email.equals(current_email)){
			Board_replyDao.getInstance().updateComment(idx, content);
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
