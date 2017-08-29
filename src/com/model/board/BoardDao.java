package com.model.board;

import java.util.ArrayList;

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
}