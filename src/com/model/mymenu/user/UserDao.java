package com.model.mymenu.user;

import java.util.HashMap;

import com.model.dao.DaoCore;
import com.model.mymenu.user.UserBean;

public class UserDao extends DaoCore{
	private static UserDao instance = new UserDao();
	public static UserDao getInstance(){return instance;}
	
	public UserBean getUserInfo(String userid) {
		UserBean ub = new UserBean();
		try{
			ub = (UserBean) getSqlMapClient().queryForObject("UserDao.getUserInfo", userid);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ub;
	}
	
	public UserBean getWriteInfo(String userid) {
		UserBean ub = new UserBean();
		try{
			ub = (UserBean) getSqlMapClient().queryForObject("UserDao.getWriteInfo", userid);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ub;
	}
	
	public UserBean getMonitorInfo(String userid) {
		UserBean ub = new UserBean();
		try{
			ub = (UserBean) getSqlMapClient().queryForObject("UserDao.getMonitorInfo", userid);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ub;
	}
}

