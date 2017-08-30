package com.action.mymenu.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.admin.MemberDao;
import com.model.login.LoginBean;
import com.model.mymenu.user.ReservBean;
import com.model.mymenu.user.ReservDao;

public class User_Menu_Reserv_Modi extends CommonAction {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		int rev_idx = Integer.parseInt(request.getParameter("rev_idx"));	
		int service = Integer.parseInt(request.getParameter("service"));	
		String pets = request.getParameter("pets");		
		String timeofrev = request.getParameter("timeofrev");	
		String date = request.getParameter("date");		
		String cctvid = request.getParameter("cctvid");
		
		updateReserv(rev_idx, service, pets, timeofrev, date, cctvid);
		
		return "User_Menu_Reserv.do";
	}
	private void updateReserv(int rev_idx, int service, String pets, String timeofrev, String date, String cctvid) {
		ReservDao.getInstance().updateReserv(rev_idx, service, pets, timeofrev, date, cctvid);
	}
}
