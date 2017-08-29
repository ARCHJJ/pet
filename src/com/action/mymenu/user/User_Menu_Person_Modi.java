package com.action.mymenu.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.login.LoginBean;
import com.model.mymenu.user.ReservBean;
import com.model.mymenu.user.ReservDao;
import com.model.mymenu.user.UserBean;
import com.model.mymenu.user.UserDao;

public class User_Menu_Person_Modi extends CommonAction {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String phone = request.getParameter("phone");

		updateUser(email, password, address1, address2, phone);
		
		return "User_Menu_Person.do";
	}

	private void updateUser(String email, String password, String address1, String address2, String phone) {
		UserDao.getInstance().updateUser(email, password, address1, address2, phone);
	}
}
