package com.action.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.board.BoardBean;
import com.model.board.BoardDao;
import com.model.login.LoginBean;

public class Board_Modi_Form_Action extends CommonAction{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		int idx = Integer.parseInt(request.getParameter("idx"));	
		String email =  ((LoginBean) request.getSession().getAttribute("session")).getEmail();
		BoardBean bb = new BoardBean();
		bb = BoardDao.getInstance().getView(idx);
		request.setAttribute("bb", bb);
		request.setAttribute("idx", idx);
		request.setAttribute("email", email);
		return "view/Board/Board_Modify_Form.jsp";
	}

}
