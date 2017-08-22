package com.action.mymenu.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.login.LoginBean;
import com.model.mymenu.user.UserBean;
import com.model.mymenu.user.UserDao;

public class User_Menu_Person_View extends CommonAction{
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String userid = ((LoginBean) request.getSession().getAttribute("session")).getEmail();
		
		UserBean ub = UserDao.getInstance().getUserInfo(userid);
		
		request.getSession().setAttribute("ub", ub);
		
		return "view/Mymenu/User/User_Menu_Person_View.jsp";
	}
}
