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
		
		int page = 1; // ���� ������ ��ȣ
		int displayRowCount = 10; // �� �������� ��µ� �Խù� ����
		int countPage = 10; // �� ȭ�鿡 ��µ� ������ ��
		int startPage = ((page - 1) / 10) * 10 + 1; // ���� ������ ��ȣ
		int endPage = startPage + countPage - 1; // ���� ������ ��ȣ
		//int totalCount = BoardDao.getInstance().getBoardCount_all(board_type); // �� �Խù� ��
		//int totalPage = totalCount / displayRowCount; // �� ������ ����
		
		ArrayList<BoardBean> bblist = new ArrayList<BoardBean>();
		bblist = BoardDao.getInstance().getBoardList_all(board_type);
		
		request.setAttribute("bblist", bblist);
		request.setAttribute("board_type", board_type);
		
	    return "view/Board/Board_View.jsp";
	}
}
