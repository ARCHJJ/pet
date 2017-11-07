package com.model.mymenu.user;

import java.util.ArrayList;
import java.util.HashMap;

import com.model.dao.DaoCore;
import com.model.board.BoardBean;

public class WriteDao extends DaoCore{
	private static WriteDao instance = new WriteDao();
	public static WriteDao getInstance(){return instance;}
	
	public ArrayList<BoardBean> getWriteList(String userid, int page) {
		ArrayList<BoardBean> bblist = new ArrayList<BoardBean>();
		try{
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("userid", userid);
			param.put("startrow", (page-1)*10);
			param.put("get_record", 10);
			bblist = (ArrayList<BoardBean>) getSqlMapClient().queryForList("WriteDao.getWriteList", param);
		}catch(Exception e){
			e.printStackTrace();
		}
		return bblist;
	}
	
	public void deleteWriteInfo(int index) {
		try{
			getSqlMapClient().delete("WriteDao.deleteWriteInfo", index);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public int getBoardCount(String userid) {
		int count = -1;
		try{
			count = (int) getSqlMapClient().queryForObject("WriteDao.getBoardCount", userid);
		}catch(Exception e){
			e.printStackTrace();
		}
		return count;
	}
}

