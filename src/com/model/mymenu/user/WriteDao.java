package com.model.mymenu.user;

import java.util.ArrayList;

import com.model.dao.DaoCore;
import com.model.board.BoardBean;

public class WriteDao extends DaoCore{
	private static WriteDao instance = new WriteDao();
	public static WriteDao getInstance(){return instance;}
	
	public ArrayList<BoardBean> getWriteList(String userid) {
		ArrayList<BoardBean> bblist = new ArrayList<BoardBean>();
		try{
			bblist = (ArrayList<BoardBean>) getSqlMapClient().queryForList("WriteDao.getWriteList", userid);
		}catch(Exception e){
			e.printStackTrace();
		}
		return bblist;
	}
}

