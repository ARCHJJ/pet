package com.action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.AdminOnlyAction;
import com.model.admin.MemberDao;

public class MemberDeleteAction extends AdminOnlyAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String email = request.getParameter("email");

		MemberDao.getInstance().deleteMember(email);

		return "membermanage.do";
	}

}
