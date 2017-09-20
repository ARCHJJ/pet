package com.action.search;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;

public class Compare_MarketAction extends CommonAction {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		return "view/search/marketCompare.jsp";
	}
}
