package com.model.admin;

import java.util.ArrayList;

import com.model.dao.DaoCore;
import com.model.mymenu.user.UserBean;

public class MemberDao extends DaoCore {

	private static MemberDao instance = new MemberDao();
	public static MemberDao getInstance(){return instance;}
	
	public ArrayList<UserBean> getMemberList(){
		ArrayList<UserBean> userlist = new ArrayList<UserBean>();
		try{
			userlist = (ArrayList<UserBean>) getSqlMapClient().queryForList("AdminDao.getMemberList");
		}catch(Exception e){
			e.printStackTrace();
		}
		return userlist;
		
	}
}
