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
	public void updateUser(String email, String password, String address1, String address2, String phone) {
		try{
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("email", email);
			param.put("password", password);
			param.put("address1", address1);
			param.put("address2", address2);
			param.put("phone", phone);
			
			getSqlMapClient().update("UserDao.updateUser", param);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void deleteInfo(String email) {
		try{
			getSqlMapClient().delete("UserDao.deleteInfo", email);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}

