package com.action.mymenu.market;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.market.MarketDao;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Market_Menu_Info_Modify_Action extends CommonAction {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		ArrayList<String> name = new ArrayList<String>();

		try {
			String realFolder = "";
			int maxSize = 1024 * 1024 * 5;
			String encType = "UTF-8";
			String savePath = request.getRealPath("/upload/");
			MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encType,
					new DefaultFileRenamePolicy());
			String filename = "";
			Enumeration<String> files = multi.getFileNames();
			int market_id = Integer.parseInt(multi.getParameter("market_id"));
			String market_name = multi.getParameter("market_name");
			String description = multi.getParameter("description");
			String address = multi.getParameter("address");
			
			while (files.hasMoreElements()) {
				String name2 = files.nextElement();
				if(multi.getFilesystemName(name2) != null)
					name.add(multi.getFilesystemName(name2));
				File f = multi.getFile(name2);
			}
			
			for (int i = 0; i < name.size(); i++) {
				filename += name.get(i) + ",";
			}

			int check[] = new int[16];

			if (multi.getParameterValues("selectOption") != null) {
				String checkBoxes[] = multi.getParameterValues("selectOption");
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

			if (filename != null)
				updateMarket(market_id, market_name, description, filename, address, check[0], check[1], check[2],
						check[3], check[4], check[5], check[6], check[7], check[8], check[9], check[10], check[11],
						check[12], check[13], check[14]);
			else
				updateMarket(market_id, market_name, description, address, check[0], check[1], check[2], check[3],
						check[4], check[5], check[6], check[7], check[8], check[9], check[10], check[11], check[12],
						check[13], check[14]);

		} catch (Exception e) {
			System.out.println("에러" + e);
		}
		return "mymenu_shop_info.do";
	}

	private void updateMarket(int market_id, String market_name, String description, String address, int cl_market,
			int cl_beauty, int cl_hotel, int cl_hospital, int ser_buypet, int ser_buystuff, int ser_hair, int ser_bath,
			int ser_rent, int ser_lodge, int ser_doctor, int ser_surgery, int pet_dog, int pet_cat, int pet_etc) {
		// TODO Auto-generated method stub
		MarketDao.getInstance().updateMarket(market_id, market_name, description, address, cl_market, cl_beauty,
				cl_hotel, cl_hospital, ser_buypet, ser_buystuff, ser_hair, ser_bath, ser_rent, ser_lodge, ser_doctor,
				ser_surgery, pet_dog, pet_cat, pet_etc);
	}

	private void updateMarket(int market_id, String market_name, String description, String photos, String address,
			int cl_market, int cl_beauty, int cl_hotel, int cl_hospital, int ser_buypet, int ser_buystuff, int ser_hair,
			int ser_bath, int ser_rent, int ser_lodge, int ser_doctor, int ser_surgery, int pet_dog, int pet_cat,
			int pet_etc) {
		// TODO Auto-generated method stub
		MarketDao.getInstance().updateMarket(market_id, market_name, description, photos, address, cl_market, cl_beauty,
				cl_hotel, cl_hospital, ser_buypet, ser_buystuff, ser_hair, ser_bath, ser_rent, ser_lodge, ser_doctor,
				ser_surgery, pet_dog, pet_cat, pet_etc);
	}
}
