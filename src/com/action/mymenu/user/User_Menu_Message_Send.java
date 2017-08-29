package com.action.mymenu.user;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.login.LoginBean;
import com.model.mymenu.user.MessageBean;
import com.model.mymenu.user.MessageDao;
import com.model.mymenu.user.UserDao;

public class User_Menu_Message_Send extends CommonAction {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String userid = ((LoginBean) request.getSession().getAttribute("session")).getEmail();

		String email1 = request.getParameter("receiver_email");
		String email2 = request.getParameter("sender_email");
		String content = request.getParameter("content");

		sendMessage(email1, email2, content);
		
		return "User_Menu_Message.do";
	}
	private void sendMessage(String receiver_email, String sender_email, String content) {
		Date date = new Date();
		MessageDao.getInstance().sendMessage(receiver_email, sender_email, content);
	}
}

