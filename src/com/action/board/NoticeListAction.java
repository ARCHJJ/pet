package com.action.board;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.CommandAction;
import com.model.board.BoardBean;
import com.model.board.freeboardDao;

public class NoticeListAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub

		/*
		int spage = 1;
		 String page = request.getParameter("page");
	        
	        if(page != null)
	            spage = Integer.parseInt(page);
	        
	        // �˻����ǰ� �˻������� �����´�.
	        String opt = request.getParameter("opt");
	        String condition = request.getParameter("condition");
	        
	        // �˻����ǰ� ������ Map�� ��´�.
	        HashMap<String, Object> listOpt = new HashMap<String, Object>();
	        listOpt.put("opt", opt);
	        listOpt.put("condition", condition);
	        listOpt.put("start", spage*10-9);
	        
	        freeboardDao dao = freeboardDao.getInstance();
	        int listCount = dao.getBoardListCount(listOpt);
	        ArrayList<BoardBean> list =  dao.getBoardList(listOpt);
	        
	        // �� ȭ�鿡 10���� �Խñ��� ����������
	        // ������ ��ȣ�� �� 5��, ���ķδ� [����]���� ǥ��
	        
	        // ��ü ������ ��
	        int maxPage = (int)(listCount/10.0 + 0.9);
	        //���� ������ ��ȣ
	        int startPage = (int)(spage/5.0 + 0.8) * 5 - 4;
	        //������ ������ ��ȣ
	        int endPage = startPage + 4;
	        if(endPage > maxPage)    endPage = maxPage;
	        
	        // 4�� ��������ȣ ����
	        request.setAttribute("spage", spage);
	        request.setAttribute("maxPage", maxPage);
	        request.setAttribute("startPage", startPage);
	        request.setAttribute("endPage", endPage);
	        
	        // ���� �� ���� �۸�� ����
	        request.setAttribute("listCount", listCount);
	        request.setAttribute("list", list);
	        */
		
	        return "WEB-INF/Board/noticeList.jsp";
	}
}
