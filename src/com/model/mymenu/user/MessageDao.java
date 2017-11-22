package com.model.mymenu.user;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import com.model.dao.DaoCore;

public class MessageDao extends DaoCore{
	private static MessageDao instance = new MessageDao();
	public static MessageDao getInstance(){return instance;}
	
	public ArrayList<MessageBean> getMessageList(String userid, int page) {
		ArrayList<MessageBean> mblist = new ArrayList<MessageBean>();
		try{
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("userid", userid);
			param.put("startrow", (page-1)*5);
			param.put("get_record", 5);
			mblist = (ArrayList<MessageBean>) getSqlMapClient().queryForList("MessageDao.getMessageList", param);
		}catch(Exception e){
			e.printStackTrace();
		}
		return mblist;
	}
	
	public void sendMessage(String receiver_email, String sender_email, String content) {
		try{
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("receiver_email", receiver_email);
			param.put("sender_email", sender_email);
			param.put("content", content);
			
			getSqlMapClient().insert("MessageDao.sendMessage", param);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void deleteMessage(String receiver_email, String sender_email, String date) {
		try{
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("receiver_email", receiver_email);
			param.put("sender_email", sender_email);
			param.put("date", date);
			
			getSqlMapClient().delete("MessageDao.deleteMessage", param);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	public int getBoardCount(String userid) {
		int count = -1;
		try{
			count = (int) getSqlMapClient().queryForObject("MessageDao.getBoardCount", userid);
		}catch(Exception e){
			e.printStackTrace();
		}
		return count;
	}
}
