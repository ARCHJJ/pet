package com.action.board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.CommandAction;
import com.model.board.BoardBean;
import com.model.board.BoardDao;

public class CustServListAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, 
			HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		int board_type = 2;
		
		ArrayList<BoardBean> bblist = new ArrayList<BoardBean>();
		
		bblist = BoardDao.getInstance().getBoardList_all(board_type);
		
		request.getSession().setAttribute("bblist", bblist);
		
		return "view/Board/Board_View.jsp";
	}
}
