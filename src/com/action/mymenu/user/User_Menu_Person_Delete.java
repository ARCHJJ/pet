package com.action.mymenu.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.user.UserDao;

public class User_Menu_Person_Delete extends CommonAction {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		
		UserDao.getInstance().deleteInfo(email);
		
		return "main.do";
	}
}