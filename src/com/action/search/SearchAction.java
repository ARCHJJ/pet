package com.action.search;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.market.ItemBean;
import com.model.mymenu.market.ItemDao;
import com.model.mymenu.market.MarketBean;
import com.model.mymenu.market.MarketDao;
import com.model.reservation.Market_addserviceBean;

public class SearchAction extends CommonAction {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub

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
		
		int value = Integer.parseInt(request.getParameter("combobox"));
		if (value == 1) {
			ArrayList<MarketBean> mblist = new ArrayList<MarketBean>();
			mblist = MarketDao.getInstance().searchMarketList(word);

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
			return "view/search/search_main.jsp";
		} else {
			ArrayList<Market_addserviceBean> iblist = new ArrayList<Market_addserviceBean>();
			iblist = ItemDao.getInstance().searchItemList(word);

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
			request.setAttribute("mslist", iblist);
			return "view/search/search_main.jsp";
		}
	}

}
