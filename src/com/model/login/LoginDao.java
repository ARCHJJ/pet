package com.model.login;

import java.util.HashMap;

import com.model.dao.DaoCore;
import com.model.login.LoginBean;

public class LoginDao extends DaoCore{
	private static LoginDao instance = new LoginDao();
	public static LoginDao getInstance(){return instance;}
	
	//로그인시 아이디,패스워드가 일치하는지 조회.
	public LoginBean isUserInfoValid(String userid, String password){
		LoginBean lb = new LoginBean();
		try{
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("userid", userid);
			param.put("password", password);
			
			lb  = (LoginBean) getSqlMapClient().queryForObject("LoginDao.isUserInfoValid", param);
		}catch(Exception e){
			e.printStackTrace();
		}
		return lb;
	}
}
