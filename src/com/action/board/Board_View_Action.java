package com.action.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.CommandAction;
import com.model.board.BoardBean;
import com.model.board.BoardDao;

public class Board_View_Action implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		int idx = Integer.parseInt(request.getParameter("idx"));
		int board_type = Integer.parseInt(request.getParameter("board_type"));
		BoardDao.getInstance().increase_hit(idx);
		
		BoardBean bb = new BoardBean();
		bb = BoardDao.getInstance().getView(idx);
		
		request.setAttribute("bb", bb);
		request.setAttribute("idx", idx);
		request.setAttribute("board_type", board_type);
		return "view/Board/Board_Detail_View.jsp";
	}

}
