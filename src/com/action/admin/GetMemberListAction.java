package com.action.admin;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.AdminOnlyAction;
import com.model.admin.MemberDao;
import com.model.mymenu.user.UserBean;

public class GetMemberListAction extends AdminOnlyAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		ArrayList<UserBean> memberlist = new ArrayList<UserBean>();
		memberlist=MemberDao.getInstance().getMemberList();
		
		request.setAttribute("memberlist", memberlist);
		return "view/admin/member_list.jsp";
	}

	
}
