package com.action.mymenu.user;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.action.board.PageInfo;
import com.model.login.LoginBean;
import com.model.mymenu.user.MessageDao;
import com.model.mymenu.user.UserBean;
import com.model.mymenu.user.UserDao;
import com.model.mymenu.user.WriteDao;
import com.model.mymenu.user.MessageBean;

public class User_Menu_Message_View extends CommonAction{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String userid = ((LoginBean) request.getSession().getAttribute("session")).getEmail();
		
		int page;
		if(request.getParameter("page") != null)
			page = Integer.parseInt(request.getParameter("page"));
		else
			page = 1;
		int count;
		
		//레코드 총 개수
		count = MessageDao.getInstance().getBoardCount(userid);
		
		PageInfo pageInfo = new PageInfo(count, page);
		
		ArrayList<MessageBean> mblist = new ArrayList<MessageBean>();
		UserBean ub = UserDao.getInstance().getUserInfo(userid);
		mblist = MessageDao.getInstance().getMessageList(userid, page);

		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("mblist", mblist);
		request.setAttribute("ub", ub);
		
		return "view/Mymenu/User/User_Menu_Message_View.jsp";
	}
}
