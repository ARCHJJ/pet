package com.model.mymenu.user;

import java.util.ArrayList;

import com.model.dao.DaoCore;

public class MessageDao extends DaoCore{
	private static MessageDao instance = new MessageDao();
	public static MessageDao getInstance(){return instance;}
	
	public ArrayList<MessageBean> getMessageList(String userid) {
		ArrayList<MessageBean> mblist = new ArrayList<MessageBean>();
		try{
			mblist = (ArrayList<MessageBean>) getSqlMapClient().queryForList("MessageDao.getMessageList", userid);
		}catch(Exception e){
			e.printStackTrace();
		}
		return mblist;
	}
}
