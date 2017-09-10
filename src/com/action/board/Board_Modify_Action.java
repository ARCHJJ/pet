package com.action.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.board.BoardDao;
import com.model.login.LoginBean;

public class Board_Modify_Action extends CommonAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String email =  ((LoginBean) request.getSession().getAttribute("session")).getEmail();
		
		int idx = Integer.parseInt(request.getParameter("idx"));
		int board_type = Integer.parseInt(request.getParameter("board_type"));
		String title = request.getParameter("title");
		System.out.println("여기부터 Modify_Action");
		System.out.println(idx + " i " +board_type + " b " +title);
	
		System.out.println(email +" em");
		String file = request.getParameter("file");
		String content = request.getParameter("content");
		System.out.println(content);
		
		updateboard(idx, title, email, file, content);
		request.setAttribute("board_type", board_type);
		return "board_view.do";
	}

	private void updateboard(int idx, String title, String email, String file, String content) {
		BoardDao.getInstance().updateBoard(idx, title, email, file, content);
	}
}