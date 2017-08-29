package com.action.mymenu.user;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.user.ReservBean;
import com.model.mymenu.user.ReservDao;
import com.model.login.LoginBean;
import com.model.mymenu.user.UserBean;

public class User_Menu_Reserv_View extends CommonAction{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String userid = ((LoginBean) request.getSession().getAttribute("session")).getEmail();
		
		ArrayList<ReservBean> rblist = new ArrayList<ReservBean>();
		rblist=ReservDao.getInstance().getReservList(userid);
		
		request.getSession().setAttribute("rblist", rblist);
		return "view/Mymenu/User/User_Menu_Reserv_View.jsp";
	}
}
