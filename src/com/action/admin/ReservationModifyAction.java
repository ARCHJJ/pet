package com.action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.AdminOnlyAction;
import com.model.admin.MarketDao;
import com.model.admin.MemberDao;
import com.model.admin.ReservationDao;

public class ReservationModifyAction extends AdminOnlyAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int market_id = Integer.parseInt(request.getParameter("market_id"));
		String email = request.getParameter("email");
		String market_name = request.getParameter("market_name");
		String description = request.getParameter("description");
		String photos = request.getParameter("photos");
		int pets = Integer.parseInt(request.getParameter("pets"));
		String address = request.getParameter("address");
		int classes = Integer.parseInt(request.getParameter("classes"));
		int service = Integer.parseInt(request.getParameter("service"));
		
		updateMarket(market_id, email, market_name, description, photos, pets, address,classes, service);
		return "reservationmanage.do";
	}

	private void updateMarket(int market_id, String email, String market_name, String description, String photos, int pets, String address, int classes, int service) {
		ReservationDao.getInstance().updateReservation(market_id, email, market_name,description, photos, pets, address, classes, service);
	}

}
