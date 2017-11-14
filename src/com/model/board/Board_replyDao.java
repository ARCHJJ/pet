package com.model.board;

import java.util.ArrayList;
import java.util.HashMap;

import com.model.dao.DaoCore;

public class Board_replyDao extends DaoCore {
	private static Board_replyDao instance = new Board_replyDao();
	public static Board_replyDao getInstance() {return instance;}
	
	//게시글 코멘트 조회
	public ArrayList<Board_replyBean> getreply(int idx) {
		ArrayList<Board_replyBean> bblist = new ArrayList<Board_replyBean>();
		try {
			bblist = (ArrayList<Board_replyBean>) getSqlMapClient().queryForList("Board_replyDao.getreply", idx);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bblist;
	}
	
	
	// 마켓 코멘트 입력
	public void insertComment(int board_id, String content, String email) {
		try {
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("board_id", board_id);
			param.put("content", content);
			param.put("email", email);
			
			getSqlMapClient().insert("Board_replyDao.insertComment", param);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 마켓 코멘트 삭제
	public void deleteComment(int idx) {
		try {
			getSqlMapClient().delete("Board_replyDao.deleteComment", idx);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	// 마켓 코멘트 수정
	public void updateComment(int idx, String content) {
		try {
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("idx", idx);
			param.put("content", content);
			getSqlMapClient().update("Board_replyDao.updateComment", param);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
