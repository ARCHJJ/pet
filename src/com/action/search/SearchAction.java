package com.action.search;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.controller.CommandAction;
import com.model.mymenu.market.ItemBean;
import com.model.mymenu.market.ItemDao;
import com.model.mymenu.market.MarketBean;
import com.model.mymenu.market.MarketDao;
import com.model.reservation.Market_addserviceBean;
import com.model.search.SearchDao;

public class SearchAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub

		String address = request.getParameter("address");
		//address 가공
		
		if(address!=""){
			String address_after[] = address.split(" ");
			address="";
	        for(int i=0 ; i<2 ; i++)
	            address=address+address_after[i]+" ";
		}
		


		String word = request.getParameter("word");
		int check[] = new int[16];
		
		if(request.getParameterValues("selectOption") != null) {
			String checkBoxes[] = request.getParameterValues("selectOption");
			for (int i = 0; i < 16; i++) {
				for (int j = 0; j < checkBoxes.length; j++) {
					if (i == Integer.parseInt(checkBoxes[j])) {
						check[i] = 1;
						break;
					}
				}
				if (check[i] != 1) {
					check[i] = 0;
				}
			}
		}
		
		ArrayList<MarketBean> mblist = new ArrayList<MarketBean>();
		mblist = SearchDao.getInstance().SelectMarketOption(check, word, address);
		ArrayList<Market_addserviceBean> iblist = new ArrayList<Market_addserviceBean>();
		iblist = SearchDao.getInstance().getSelectedOption(check, word);

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
		request.setAttribute("word", word);
		request.setAttribute("mblist", mblist);
		request.setAttribute("mslist", iblist);
		request.setAttribute("address", address);
		
		return "view/search/search_main.jsp";
	}

}
