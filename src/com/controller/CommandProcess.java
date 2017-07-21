package com.controller;

import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CommandProcess extends HttpServlet{
	private Map commandMap = new HashMap(); 
	public static String command="";
	public void init(ServletConfig config) throws ServletException {
		ResourceBundle rbHome = ResourceBundle.getBundle("com/properties/url-mapping");
		Enumeration<String> actionEnumHome = rbHome.getKeys();
		while(actionEnumHome.hasMoreElements())
		{
			String command = actionEnumHome.nextElement();
			String className = rbHome.getString(command);
			try {
				Class commandClass = Class.forName(className); 
				Object commandInstance = commandClass.newInstance(); 
				commandMap.put(command, commandInstance);
			} catch(ClassNotFoundException e) {
				continue; // error
				//throw new ServletException(e);
			} catch(InstantiationException e) {
				e.printStackTrace();
			} catch(IllegalAccessException e) {
				e.printStackTrace();
			}
		}				
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestPro(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestPro(request, response);
	}
	
	private void requestPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String view = null;
		CommandAction com = null;
		request.setCharacterEncoding("utf-8");
		try {
			String command = request.getRequestURI();
			this.command=command;
			if ( command.indexOf(request.getContextPath()) == 0 ) {
				command = command.substring(request.getContextPath().length());
			}
			com = (CommandAction)commandMap.get(command);
			if ( com == null ) {
				System.out.println("not found : " + command);
				return;
			}
			view = com.requestPro(request, response);
			if ( view == null ) {
				return; 
			}
		}catch(Throwable e) {
			throw new ServletException(e);
		}
		
		if ( view == null ) 
			return;

		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}	
}
