package com.action.search;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.reservation.Market_addserviceBean;
import com.model.search.SearchDao;

public class SelectsearchAction extends CommonAction {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		String checkBoxes[] = request.getParameterValues("selectOption");
		
		ArrayList<Market_addserviceBean> mslist = new ArrayList<Market_addserviceBean>();
		mslist = SearchDao.getInstance().getSelectedOption(checkBoxes);

		request.getSession().setAttribute("mslist", mslist);
		return "view/search/search_main.jsp";
	}
}
