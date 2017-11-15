package com.action.mymenu.market;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.CommonAction;
import com.model.mymenu.market.ItemDao;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Market_Menu_Item_Insert_Action extends CommonAction{
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		try {
			int maxSize = 1024 * 1024 * 5;
			String encType = "UTF-8";
			String savePath = request.getRealPath("/upload/");
			MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encType,
					new DefaultFileRenamePolicy());
			String filename = "";
			Enumeration<String> files = multi.getFileNames();
			ArrayList<String> filenames = new ArrayList<String>();
			
			String market_id = multi.getParameter("market_id");
			String name = multi.getParameter("name");
			String description = multi.getParameter("description");
			String price = multi.getParameter("price");
			
			while (files.hasMoreElements()) {
				String name2 = files.nextElement();
				if(multi.getFilesystemName(name2) != null)
					filenames.add(multi.getFilesystemName(name2));
			}
			
			for (int i = 0; i < filenames.size(); i++) {
				filename += filenames.get(i) + ",";
			}
			
			insertItem(market_id, name, description, filename, price);
		}catch(Exception e) {
			System.out.println("에러" + e);
		}
		
		
		return "mymenu_shop_item.do";
	}

	private void insertItem(String market_id, String name, String description, String photos,
			String price) {
		// TODO Auto-generated method stub
		ItemDao.getInstance().insertItem(market_id, name, description, photos, price);
	}
}
