package com.model.admin;

import java.util.ArrayList;
import java.util.HashMap;

import com.model.dao.DaoCore;
import com.model.mymenu.market.MarketBean;
import com.model.mymenu.user.UserBean;

public class MemberDao extends DaoCore {

	private static MemberDao instance = new MemberDao();

	public static MemberDao getInstance() {
		return instance;
	}

	// 멤버리스트 호출
	public ArrayList<UserBean> getMemberList() {
		ArrayList<UserBean> userlist = new ArrayList<UserBean>();
		try {
			userlist = (ArrayList<UserBean>) getSqlMapClient().queryForList("AdminDao.getMemberList");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return userlist;
	}
	
	public void updatePower(String email, int power) {
		try {
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("email", email);
			param.put("power", power);
			
			getSqlMapClient().update("AdminDao.updatePower", param);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 사용자 삭제.
	public void deleteMember(String email) {
		try {
			getSqlMapClient().delete("AdminDao.deleteMember", email);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//사용자 수정
	public void updateMember_a(String email, String password, String address1, String address2, String phone, String gender, int power, String name) {
		try {
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("email", email);
			param.put("password", password);
			param.put("address1", address1);
			param.put("address2", address2);
			param.put("phone", phone);
			param.put("gender", gender);
			param.put("power", power);
			param.put("name", name);

			getSqlMapClient().update("AdminDao.updateMember_a", param);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateMember_b(String email, String address1, String address2, String phone,	String gender, int power, String name) {
		try {
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("email", email);
			param.put("address1", address1);
			param.put("address2", address2);
			param.put("phone", phone);
			param.put("gender", gender);
			param.put("power", power);
			param.put("name", name);

			getSqlMapClient().update("AdminDao.updateMember_b", param);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
}
