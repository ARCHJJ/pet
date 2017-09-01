package com.action.board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.CommandAction;
import com.model.board.BoardBean;
import com.model.board.BoardDao;

public class Board_Notice_List_Action implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, 
			HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		int board_type = 1;
		
		int page = 1; // 현재 페이지 번호
		int displayRowCount = 10; // 한 페이지에 출력될 게시물 갯수
		int countPage = 10; // 한 화면에 출력될 페이지 수
		int startPage = ((page - 1) / 10) * 10 + 1; // 시작 페이지 번호
		int endPage = startPage + countPage - 1; // 종료 페이지 번호
		//int totalCount = BoardDao.getInstance().getBoardCount_all(board_type); // 총 게시물 수
		//int totalPage = totalCount / displayRowCount; // 총 페이지 갯수
		
		ArrayList<BoardBean> bblist = new ArrayList<BoardBean>();
		
		bblist = BoardDao.getInstance().getBoardList_all(board_type);
		
		request.setAttribute("bblist", bblist);
		request.setAttribute("board_type", board_type);
		
	    return "view/Board/Board_View.jsp";
	}
}
