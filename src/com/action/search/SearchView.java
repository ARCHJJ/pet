package com.action.search;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.controller.CommandAction;

public class SearchView implements CommandAction{
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String word = "";
		int check[] = new int[16];
		
		request.getSession().setAttribute("word", word);
		request.getSession().setAttribute("check", check[0]);
		request.getSession().setAttribute("check1", check[1]);
		request.getSession().setAttribute("check2", check[2]);
		request.getSession().setAttribute("check3", check[3]);
		request.getSession().setAttribute("check4", check[4]);
		request.getSession().setAttribute("check5", check[5]);
		request.getSession().setAttribute("check6", check[6]);
		request.getSession().setAttribute("check7", check[7]);
		request.getSession().setAttribute("check8", check[8]);
		request.getSession().setAttribute("check9", check[9]);
		request.getSession().setAttribute("check10", check[10]);
		request.getSession().setAttribute("check11", check[11]);
		request.getSession().setAttribute("check12", check[12]);
		request.getSession().setAttribute("check13", check[13]);
		request.getSession().setAttribute("check14", check[14]);
		return "view/search/search_main.jsp";
	}

}
