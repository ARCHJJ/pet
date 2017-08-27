package com.action.mymenu.market;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.login.LoginBean;
import com.model.mymenu.market.ItemBean;
import com.model.mymenu.market.ItemDao;

public class Market_Menu_Item_Action extends CommonAction{
	public String requestPro(HttpServletRequest request, 
			HttpServletResponse response) throws Throwable {
		String userid = ((LoginBean) request.getSession().getAttribute("session")).getEmail();

		ItemBean ib = ItemDao.getInstance().getItemInfoValid(userid);
		
		request.getSession().setAttribute("ib", ib);
		return "view/Mymenu/Market/Market_Menu_Item_View.jsp";
	}
}
