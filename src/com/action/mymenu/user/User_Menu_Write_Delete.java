package com.action.mymenu.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.user.WriteDao;

public class User_Menu_Write_Delete extends CommonAction{
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		int idx = Integer.parseInt(request.getParameter("idx"));

		WriteDao.getInstance().deleteWriteInfo(idx);
		
		return "User_Menu_Write.do";
	}

}
