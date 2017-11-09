package com.action.mymenu.market;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.market.MarketDao;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import java.util.*;
import java.io.*;
import java.text.SimpleDateFormat;

public class Market_Menu_Info_Modify_Action extends CommonAction {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		/*
		 * int market_id = Integer.parseInt(request.getParameter("market_id")); String
		 * market_name = request.getParameter("market_name"); String description =
		 * request.getParameter("description"); String photos =
		 * request.getParameter("photos"); String address =
		 * request.getParameter("address"); String name1 = (String)photos.nextElement();
		 * String name = multi.getFilesystemName(name1);
		 * 
		 * 
		 * int check[] = new int[16];
		 * 
		 * if(request.getParameterValues("selectOption") != null) { String checkBoxes[]
		 * = request.getParameterValues("selectOption"); for (int i = 0; i < 16; i++) {
		 * for (int j = 0; j < checkBoxes.length; j++) { if (i ==
		 * Integer.parseInt(checkBoxes[j])) { check[i] = 1; break; } } if (check[i] !=
		 * 1) { check[i] = 0; } } }
		 */
		long currentTime = System.currentTimeMillis();
		SimpleDateFormat simDf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		try {
			String realFolder = "";
			int maxSize = 1024 * 1024 * 5;
			String encType = "UTF-8";
			String savePath = request.getRealPath("/upload/");
			MultipartRequest multi = null;
			multi = new MultipartRequest(request, savePath, maxSize, encType, new DefaultFileRenamePolicy());
			
			
			int market_id = Integer.parseInt(multi.getParameter("market_id"));
			String market_name = multi.getParameter("market_name");
			String description = multi.getParameter("description");
			Enumeration photos = multi.getFileNames();
			String address = multi.getParameter("address");
			String name1 = (String) photos.nextElement();
			String name = multi.getFilesystemName(name1);
			Enumeration params = multi.getParameterNames();

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

			updateMarket(market_id, market_name, description, name, address, check[0], check[1], check[2], check[3], check[4],
					check[5], check[6], check[7], check[8], check[9], check[10], check[11], check[12], check[13],
					check[14]);

			while (params.hasMoreElements()) {
				String name2 = (String) params.nextElement();
				String value1 = multi.getParameter(name2);
				multi.getParameter(name2);
			}
			while (photos.hasMoreElements()) {
				String name2 = (String) photos.nextElement();
				String filename1 = multi.getFilesystemName(name2);
				String original1 = multi.getOriginalFileName(name2);
				String contentType = multi.getContentType(name2);
				File f = multi.getFile(name2);
				System.out.println("name:" + name1 + "\n");
				System.out.println("file:" + filename1 + "\n");
				System.out.println("orig:" + original1 + "\n");
				System.out.println("content:" + contentType + "\n");
				System.out.println("ff" + f + "\n");
			}
		} catch (Exception e) {
			System.out.println("에러" + e);
		}
		return "mymenu_shop_info.do";
	}

	private void updateMarket(int market_id, String market_name, String description,String photos, String address, int cl_market,
			int cl_beauty, int cl_hotel, int cl_hospital, int ser_buypet, int ser_buystuff, int ser_hair, int ser_bath,
			int ser_rent, int ser_lodge, int ser_doctor, int ser_surgery, int pet_dog, int pet_cat, int pet_etc) {
		// TODO Auto-generated method stub
		MarketDao.getInstance().updateMarket(market_id, market_name, description, photos, address, cl_market, cl_beauty,
				cl_hotel, cl_hospital, ser_buypet, ser_buystuff, ser_hair, ser_bath, ser_rent, ser_lodge, ser_doctor,
				ser_surgery, pet_dog, pet_cat, pet_etc);
	}
}
