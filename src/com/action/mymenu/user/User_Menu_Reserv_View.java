package com.action.mymenu.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.user.ReservBean;
import com.model.mymenu.user.ReservDao;
import com.model.login.LoginBean;

public class User_Menu_Reserv_View extends CommonAction{
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String userid = ((LoginBean) request.getSession().getAttribute("session")).getEmail();
		
		ReservBean rb = ReservDao.getInstance().getReservInfo(userid);
		
		request.getSession().setAttribute("rb", rb);
		
		return "view/Mymenu/User/User_Menu_Reserv_View.jsp";
	}
}
