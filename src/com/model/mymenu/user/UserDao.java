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
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("userid", userid);
			
			ub = (UserBean) getSqlMapClient().queryForObject("UserDao.getUserInfo", param);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ub;
	}
	
	public UserBean loadReservInfo(String userid) {
		UserBean ub = new UserBean();
		try{
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("userid", userid);
			
			ub = (UserBean) getSqlMapClient().queryForObject("UserDao.loadReservInfo", param);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ub;
	}
	
	public UserBean deleteReservInfo(String userid, int select_rev_idx) {
		UserBean ub = new UserBean();
		try{
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("userid", userid);
			param.put("select_rev_idx", select_rev_idx);
			
			ub = (UserBean) getSqlMapClient().queryForObject("UserDao.deleteReservInfo", param);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ub;
	}
}

