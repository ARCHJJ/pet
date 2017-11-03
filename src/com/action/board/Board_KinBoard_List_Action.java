package com.action.board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.CommandAction;
import com.model.board.BoardBean;
import com.model.board.BoardDao;

public class Board_KinBoard_List_Action implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, 
			HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub

		int page;
		if(request.getParameter("sel_page") != null)
			page = Integer.parseInt(request.getParameter("sel_page"));
		else
			page = 1;
		int count;
		int board_type = 3;
		
		count = BoardDao.getInstance().getBoardCount(board_type);
		
		ArrayList<BoardBean> bblist = new ArrayList<BoardBean>();
		bblist = BoardDao.getInstance().getBoardList_all(board_type, page);
		
		request.setAttribute("rowcount", count/10 + 1);
		request.setAttribute("bblist", bblist);
		request.setAttribute("board_type", board_type);
		
	    return "view/Board/Board_View.jsp";
	}
}
