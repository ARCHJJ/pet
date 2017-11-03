package com.action.board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.CommandAction;
import com.model.board.BoardBean;
import com.model.board.BoardDao;

public class Board_FreeBoard_List_Action implements CommandAction {
	
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
		int board_type = 4;
		
		//레코드 총 개수
		count = BoardDao.getInstance().getBoardCount(board_type);
		
		PageInfo pageInfo = new PageInfo(count, page).getPageInfo();
		
		/* 최대 페이지보다 큰 페이지 접근 */
		if(page > pageInfo.getMaxPage()){
			return "Board_View.do?page="+pageInfo.getMaxPage();
		}
		
		
		ArrayList<BoardBean> bblist = new ArrayList<BoardBean>();
		bblist = BoardDao.getInstance().getBoardList_all(board_type, page);
		
		request.setAttribute("count", count/10 + 1);
		request.setAttribute("bblist", bblist);
		request.setAttribute("board_type", board_type);

		return "view/Board/Board_View.jsp";
	}
}
