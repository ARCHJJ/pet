package com.action.mymenu.user;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.login.LoginBean;
import com.model.mymenu.user.MessageDao;
import com.model.mymenu.user.MessageBean;

public class User_Menu_Message_View extends CommonAction{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String userid = ((LoginBean) request.getSession().getAttribute("session")).getEmail();
		
		ArrayList<MessageBean> mblist = new ArrayList<MessageBean>();
		
		mblist = MessageDao.getInstance().getMessageList(userid);
		request.getSession().setAttribute("mblist", mblist);
		
		return "view/Mymenu/User/User_Menu_Message_View.jsp";
	}

}