package com.action.mymenu.market;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.login.LoginBean;
import com.model.mymenu.market.ItemBean;
import com.model.mymenu.market.ItemDao;
import com.model.mymenu.market.MarketBean;
import com.model.mymenu.market.MarketDao;

public class Market_Menu_Item_Action extends CommonAction{
	public String requestPro(HttpServletRequest request, 
			HttpServletResponse response) throws Throwable {
		String userid = ((LoginBean) request.getSession().getAttribute("session")).getEmail();
		
		ArrayList<ItemBean> itemlist = new ArrayList<ItemBean>();
		itemlist = ItemDao.getInstance().getItemList(userid);
		MarketBean mb = MarketDao.getInstance().isMarketInfoValid(userid);
		
		request.setAttribute("itemlist", itemlist);
		request.setAttribute("mb", mb);
		return "view/Mymenu/Market/Market_Menu_Item_View.jsp";
	}
}
