package com.action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.AdminOnlyAction;
import com.model.admin.MarketDao;

public class MarketModifyAction extends AdminOnlyAction {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String email = request.getParameter("email");
		int market_id = Integer.parseInt(request.getParameter("market_id"));
		String market_name = request.getParameter("market_name");
		String description = request.getParameter("description");
		String photos = request.getParameter("photos");
		String address = request.getParameter("address");
		
		int check[] = new int[16];
		
		if(request.getParameterValues("selectOption") != null) {
			String checkBoxes[] = request.getParameterValues("selectOption");
			for (int i = 0; i < 16; i++) {
				for (int j = 0; j < checkBoxes.length; j++) {
					if (i == Integer.parseInt(checkBoxes[j])) {
						check[i] = 1;
						break;
					}
				}
				if (check[i] != 1) {
					check[i] = 0;
				}
			}
		}
		updateMarket(market_id, email, market_name, description, photos, address, check[0], check[1], check[2], check[3], check[4],
				check[5], check[6], check[7], check[8], check[9], check[10], check[11], check[12], check[13], check[14]);
		return "marketmanage.do";
	}

	private void updateMarket(int market_id, String email,  String market_name, String description, String photos, String address, int cl_market, int cl_beauty, int cl_hotel, int cl_hospital,
			int ser_buypet, int ser_buystuff, int ser_hair, int ser_bath, int ser_rent, int ser_lodge, int ser_doctor, int ser_surgery, int pet_dog, int pet_cat, int pet_etc) {
		MarketDao.getInstance().updateMarket(market_id, email, market_name, description, photos, address, cl_market, cl_beauty,
				cl_hotel, cl_hospital, ser_buypet, ser_buystuff, ser_hair, ser_bath, ser_rent, ser_lodge, ser_doctor, ser_surgery, pet_dog, pet_cat, pet_etc);
	}

}
