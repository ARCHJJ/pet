package com.action.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.board.BoardDao;

public class Board_Write_Form_Action extends CommonAction {

	@Override
	public String execute(HttpServletRequest request, 
			HttpServletResponse response) throws Throwable {
		//int board_type = Integer.parseInt(request.getParameter("board_type"));
		//request.setAttribute("board_type", board_type);
		return "view/Board/Board_Write_Form.jsp";
	}
	

}
