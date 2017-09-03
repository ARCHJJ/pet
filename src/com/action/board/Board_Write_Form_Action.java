package com.action.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.login.LoginBean;
import com.model.mymenu.market.MarketBean;
import com.model.mymenu.market.MarketDao;

public class Board_Write_Form_Action extends CommonAction {

	@Override
	public String execute(HttpServletRequest request, 
			HttpServletResponse response) throws Throwable {
		int board_type = Integer.parseInt(request.getParameter("board_type"));

		String email =  ((LoginBean) request.getSession().getAttribute("session")).getEmail();

		request.setAttribute("board_type", board_type);
		request.setAttribute("email", email);
		return "view/Board/Board_Write_Form.jsp";
	}
	

}
