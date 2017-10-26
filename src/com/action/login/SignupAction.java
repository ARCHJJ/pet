package com.action.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.CommandAction;
import com.model.login.LoginDao;

public class SignupAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		int power = 100;
		String name = request.getParameter("name");
		
		System.out.println(email+password+address1+address2+phone+gender+power+name);

		insertMember(email, password, address1, address2, phone, gender, power, name);
		return "main.do";
	}

	private void insertMember(String email, String password, String address1, String address2, String phone, String gender, int power, String name) {
		LoginDao.getInstance().insertMember(email, password, address1, address2, phone, gender, power, name);
	}
	
}
