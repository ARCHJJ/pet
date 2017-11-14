package com.action.board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.CommandAction;
import com.model.board.BoardBean;
import com.model.board.BoardDao;
import com.model.board.Board_replyBean;
import com.model.board.Board_replyDao;

public class Board_View_Action implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		int idx = Integer.parseInt(request.getParameter("idx"));
		int board_type = Integer.parseInt(request.getParameter("board_type"));
		BoardDao.getInstance().increase_hit(idx);
		
		BoardBean bb = new BoardBean();
		bb = BoardDao.getInstance().getView(idx);
		
		ArrayList<Board_replyBean> bblist = new ArrayList<Board_replyBean>();
		bblist = Board_replyDao.getInstance().getreply(idx);
		
		request.setAttribute("bb", bb);
		request.setAttribute("bblist", bblist);
		request.setAttribute("idx", idx);
		request.setAttribute("board_type", board_type);
		
		return "view/Board/Board_Detail_View.jsp";
	}

}
