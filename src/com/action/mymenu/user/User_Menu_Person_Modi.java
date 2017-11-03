package com.action.mymenu.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.user.UserDao;

public class User_Menu_Person_Modi extends CommonAction {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address1 = request.getParameter("address1");	
		String address2 = request.getParameter("address2");	
		String phone = request.getParameter("phone");		
		String gender = request.getParameter("gender");		
		String name = request.getParameter("name");

		if(password != "")
			updateUser(email, password, address1, address2, phone, gender, name);
		else
			updateUser(email, address1, address2, phone, gender, name);
			
		return "User_Menu_Person.do";
	}

	private void updateUser(String email, String password, String address1, String address2, String phone, String gender, String name) {
		UserDao.getInstance().updateUser_a(email, password, address1, address2, phone, gender, name);
	}
	private void updateUser(String email, String address1, String address2, String phone, String gender, String name) {
		UserDao.getInstance().updateUser_b(email, address1, address2, phone, gender, name);
	}
}