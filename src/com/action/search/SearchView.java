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
		
		request.setAttribute("word", word);
		request.setAttribute("check", check[0]);
		request.setAttribute("check1", check[1]);
		request.setAttribute("check2", check[2]);
		request.setAttribute("check3", check[3]);
		request.setAttribute("check4", check[4]);
		request.setAttribute("check5", check[5]);
		request.setAttribute("check6", check[6]);
		request.setAttribute("check7", check[7]);
		request.setAttribute("check8", check[8]);
		request.setAttribute("check9", check[9]);
		request.setAttribute("check10", check[10]);
		request.setAttribute("check11", check[11]);
		request.setAttribute("check12", check[12]);
		request.setAttribute("check13", check[13]);
		request.setAttribute("check14", check[14]);
		return "view/search/search_main.jsp";
	}

}
