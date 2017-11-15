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
		String content = request.getParameter("content");

		String str = "main.do";
		switch (board_type) {
		case 1:
			str = "board_notice.do";
			break;
		case 2:
			str = "board_customer_service.do";
			break;
		case 3:
			str = "board_kin.do";
			break;
		case 4:
			str = "board_freeboard.do";
			break;
		}
		
		writeBoard(board_type, email, title, content);
		return str;
	}

	private void writeBoard(int board_type, String email, String title, String content) {
		// TODO Auto-generated method stub
		BoardDao.getInstance().writeBoard(board_type, email, title, content);
	}
	

}
