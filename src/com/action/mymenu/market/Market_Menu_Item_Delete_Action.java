package com.action.mymenu.market;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.market.ItemDao;

public class Market_Menu_Item_Delete_Action extends CommonAction{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String idx = request.getParameter("idx");

		ItemDao.getInstance().deleteItemInfo(idx);
		
		return "mymenu_shop_item.do";
	}
}
