package com.action.mymenu.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.login.LoginBean;
import com.model.mymenu.user.ReservBean;
import com.model.mymenu.user.ReservDao;

public class User_Menu_Reserv_Modi extends CommonAction {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String userid = ((LoginBean) request.getSession().getAttribute("session")).getEmail();

	//	ReservBean rb = ReservDao.getInstance().getReservInfo(userid);

	//	request.getSession().setAttribute("rb", rb);

		return "view/Mymenu/User/User_Menu_Reserv_Modi.jsp";
	}

}
