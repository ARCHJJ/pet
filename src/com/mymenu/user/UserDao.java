package com.mymenu.user;

import java.util.HashMap;

import com.model.dao.DaoCore;
import com.mymenu.user.UserBean;

public class UserDao extends DaoCore{
	private static UserDao instance = new UserDao();
	public static UserDao getInstance(){return instance;}
	
	//마이메뉴가 고객 권한이 맞는지 확인
	public UserBean isUserInfoValid(String userid, int power) {
		UserBean ub = new UserBean();
		try{
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("userid", userid);
			param.put("power", power);
			
			ub  = (UserBean) getSqlMapClient().queryForObject("UserDao.isUserInfoValid", param);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ub;
	}
}

