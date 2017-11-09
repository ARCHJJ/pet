package com.action.mymenu.market;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.market.MarketDao;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import java.util.*;
import java.io.*;

public class Market_Menu_Info_Modify_Action extends CommonAction {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		
		/*
		String pet_dog = request.getParameter("pet_dog");
		String pet_cat = request.getParameter("pet_cat");
		String pet_etc = request.getParameter("pet_etc");
		String cl_market = request.getParameter("cl_market");
		String cl_beauty = request.getParameter("cl_beauty");
		String cl_hotel = request.getParameter("cl_hotel");
		String cl_hospital = request.getParameter("cl_hospital");
		String ser_buypet = request.getParameter("ser_buypet");
		String ser_buystuff = request.getParameter("ser_buystuff");
		String ser_hair = request.getParameter("ser_hair");
		String ser_bath = request.getParameter("ser_bath");
		String ser_rent = request.getParameter("ser_rent");
		String ser_lodge = request.getParameter("ser_lodge");
		String ser_doctor = request.getParameter("ser_doctor");
		String ser_surgery = request.getParameter("ser_surgery");
		*/
		
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
		
		/*String realFolder = "";
		int maxSize = 1024*1024*5;
		String encType = "UTF-8";
		String savefile = "uploadFile";
		MultipartRequest multi = new MultipartRequest(request,realFolder,maxSize,encType,new DefaultFileRenamePolicy());

		int market_id = Integer.parseInt(multi.getParameter("market_id"));
		String market_name = multi.getParameter("market_name");
		String description = multi.getParameter("description");
		String photos = multi.getParameter("photos");
		Enum files = (Enum) multi.getFileNames();
		String address = multi.getParameter("address");
		
		int check[] = new int[16];
		
		if(multi.getParameterValues("selectOption") != null) {
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
		}*/

		updateMarket(market_id, market_name, description, photos, address, check[0], check[1], check[2], check[3], check[4],
				check[5], check[6], check[7], check[8], check[9], check[10], check[11], check[12], check[13], check[14]);
		
		return "mymenu_shop_info.do";
	}

	private void updateMarket(int market_id, String market_name, String description, String photos, String address, int cl_market, int cl_beauty, int cl_hotel, int cl_hospital,
			int ser_buypet, int ser_buystuff, int ser_hair, int ser_bath, int ser_rent, int ser_lodge, int ser_doctor, int ser_surgery, int pet_dog, int pet_cat, int pet_etc) {
		// TODO Auto-generated method stub
		MarketDao.getInstance().updateMarket(market_id, market_name, description, photos, address, cl_market, cl_beauty,
				cl_hotel, cl_hospital, ser_buypet, ser_buystuff, ser_hair, ser_bath, ser_rent, ser_lodge, ser_doctor, ser_surgery, pet_dog, pet_cat, pet_etc);
	}
}
