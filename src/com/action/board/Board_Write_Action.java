package com.action.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.board.BoardDao;

public class Board_Write_Action extends CommonAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		int board_type = Integer.parseInt(request.getParameter("board_type"));	
		String email = request.getParameter("email");
		String title = request.getParameter("title");
		String file = request.getParameter("file");
		String content = request.getParameter("content");

		writeBoard(board_type, email, title, file, content);
		request.setAttribute("board_type", board_type);
		return "view/Board/Board_WriteOk.jsp";
	}

	private void writeBoard(int board_type, String email, String title, String file, String content) {
		// TODO Auto-generated method stub
		
		BoardDao.getInstance().writeBoard(board_type, email, title, file, content);
		
	}
	

}
