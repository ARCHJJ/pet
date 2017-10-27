package com.action.search;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.market.ItemBean;
import com.model.mymenu.market.ItemDao;
import com.model.mymenu.market.MarketBean;
import com.model.mymenu.market.MarketDao;

public class SearchAction extends CommonAction {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub

		String checkBoxes[] = request.getParameterValues("selectOption");
		int check[] = new int[16];

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

		String word = request.getParameter("word");
		int value = Integer.parseInt(request.getParameter("combobox"));

		if (value == 1) {
			ArrayList<MarketBean> mblist = new ArrayList<MarketBean>();
			mblist = MarketDao.getInstance().searchMarketList(word);

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
			request.getSession().setAttribute("word", word);
			request.getSession().setAttribute("mblist", mblist);
			return "view/search/search_main.jsp";
		} else {
			ArrayList<ItemBean> iblist = new ArrayList<ItemBean>();
			iblist = ItemDao.getInstance().searchItemList(word);

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
			request.getSession().setAttribute("word", word);
			request.getSession().setAttribute("iblist", iblist);
			return "view/search/search_main.jsp";
		}
	}

}
