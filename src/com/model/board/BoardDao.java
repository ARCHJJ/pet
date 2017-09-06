package com.model.board;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import com.model.dao.DaoCore;

public class BoardDao extends DaoCore {
	private static BoardDao instance = new BoardDao();
	public static BoardDao getInstance() {return instance;}
	
	public ArrayList<BoardBean> getBoardList_all(int board_type) {
		ArrayList<BoardBean> Bb = new ArrayList<BoardBean>();
		try {
			Bb = (ArrayList<BoardBean>) getSqlMapClient().queryForList("BoardDao.getBoardList_all", board_type);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return Bb;
	}

	public void increase_hit(int idx) {
		try{
			getSqlMapClient().update("BoardDao.increase_hit", idx);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void writeBoard(int board_type, String email, String title, String file, String content) {
		try{
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("board_type", board_type);
			param.put("email", email);
			param.put("title", title);
			param.put("file", file);
			param.put("content", content);
			
			getSqlMapClient().insert("BoardDao.writeBoard", param);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public BoardBean getView(int idx) {
		BoardBean bb = new BoardBean();
		try {
			bb = (BoardBean) getSqlMapClient().queryForObject("BoardDao.getView", idx);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return bb;
	}
	
	public void updateBoard(int idx, int board_type, String title, String email, String file, String content) {
		try{
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("idx", idx);
			param.put("board_type", board_type);
			param.put("title", title);
			param.put("email", email);
			param.put("file", file);
			param.put("content", content);
			getSqlMapClient().update("BoardDao.updateBoard", param);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void deleteBoard(int idx) {
		try{			
			getSqlMapClient().delete("BoardDao.deleteBoard", idx);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}