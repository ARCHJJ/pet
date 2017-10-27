package com.action.mymenu.user;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.login.LoginBean;
import com.model.mymenu.user.UserBean;
import com.model.mymenu.user.WriteDao;
import com.model.board.BoardBean;

public class User_Menu_Write_View extends CommonAction{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String userid = ((LoginBean) request.getSession().getAttribute("session")).getEmail();
		
		ArrayList<BoardBean> bblist = new ArrayList<BoardBean>();
		bblist=WriteDao.getInstance().getWriteList(userid);
		
		request.setAttribute("bblist", bblist);
		
		return "view/Mymenu/User/User_Menu_Write_View.jsp";
	}
}
