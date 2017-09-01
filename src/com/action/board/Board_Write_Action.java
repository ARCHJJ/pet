package com.action.board;

import java.sql.Date;
import java.text.SimpleDateFormat;

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
		Date date =	(Date) new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("date"));
		
		writeBoard(board_type, email, title, file, content, date);
		request.setAttribute("board_type", board_type);
		return "view/Board/Board_WriteOk.jsp";
	}

	private void writeBoard(int board_type, String email, String title, String file, String content, Date date) {
		// TODO Auto-generated method stub
		
		BoardDao.getInstance().writeBoard(board_type, email, title, file, content, date);
		
	}
	

}
