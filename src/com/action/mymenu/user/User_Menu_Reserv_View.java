package com.action.mymenu.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.mymenu.user.UserBean;
import com.model.mymenu.user.UserDao;

public class User_Menu_Reserv_View {
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String userid = request.getSession().getId();
		
		UserBean ub = UserDao.getInstance().getUserInfo(userid);
		
		return "WebContent/WEB-INF/Mymenu/User_Menu_Reserv_View.jsp";
	}
}