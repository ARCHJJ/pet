package com.action.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.board.Board_replyDao;
import com.model.login.LoginBean;

public class ReplyInsertAction extends CommonAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		int board_id = Integer.parseInt(request.getParameter("board_id"));
		String content = request.getParameter("content");
		String email = ((LoginBean)request.getSession().getAttribute("session")).getEmail();
		int board_type = Integer.parseInt(request.getParameter("board_type"));
		
		Board_replyDao.getInstance().insertComment(board_id, content, email);
		
		request.setAttribute("url", "board_view.do?idx="+ board_id + "&board_type="+ board_type);
		return "redirect.jsp";
	}
}