package com.action.mymenu.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.user.MessageDao;

public class User_Menu_Message_Delete extends CommonAction {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String receiver = request.getParameter("receiver_email");
		String sender = request.getParameter("sender_email");
		String date = request.getParameter("date");

		MessageDao.getInstance().deleteMessage(receiver, sender, date);

		return "main.do";
	}
}
