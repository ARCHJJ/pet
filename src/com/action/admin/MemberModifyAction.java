package com.action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.AdminOnlyAction;
import com.model.admin.MemberDao;

public class MemberModifyAction extends AdminOnlyAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address1 = request.getParameter("address1");	
		String address2 = request.getParameter("address2");	
		String phone = request.getParameter("phone");		
		String gender = request.getParameter("gender");		
		int power = Integer.parseInt(request.getParameter("power"));
		String name = request.getParameter("name");
		
		updateMember(email, password, address1, address2, phone, gender,power, name);
		return "membermanage.do";
	}
	private void updateMember(String email, String password, String address1, String address2, String phone, String gender, int power, String name) {
		MemberDao.getInstance().updateMember(email, password, address1, address2, phone, gender, power, name);
	}
	
}
