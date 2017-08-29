package com.action.mymenu.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.login.LoginBean;
import com.model.mymenu.user.UserDao;

public class User_Menu_Person_Delete {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String userid = ((LoginBean) request.getSession().getAttribute("session")).getEmail();
		
		UserDao.getInstance().deleteInfo(userid);
		
		return "main.do";
	}
}
