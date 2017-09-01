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
	
	//public int getBoardCount_all(int board_type) throws Exception {
	//	return (int) getSqlMapClient().queryForObject("BoardDao.getBoardCount_all", board_type);
	//}
	
	public void writeBoard(int board_type, String email, String title, String file, String content, Date date) {
		try{
			HashMap<String, Object> param = new HashMap<String, Object>();	
			param.put("board_type", board_type);
			param.put("email", email);
			param.put("title", title);
			param.put("file", file);
			param.put("content", content);
			param.put("date", date);
			
			getSqlMapClient().insert("BoardDao.writeBoard", param);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}