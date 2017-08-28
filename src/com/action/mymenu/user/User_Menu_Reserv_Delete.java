package com.action.mymenu.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.admin.MemberDao;
import com.model.mymenu.user.ReservBean;
import com.model.mymenu.user.ReservDao;

public class User_Menu_Reserv_Delete extends CommonAction{
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String idx = request.getParameter("rev_idx");

		ReservDao.getInstance().deleteReservInfo(idx);
		
		return "User_Menu_Reserv.do";
	}
}