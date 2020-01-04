package com.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MapServlet
 */
public class MapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MapServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		
		int num = 9;
		
		BufferedReader reader=request.getReader();
		StringBuilder sb=new StringBuilder();
		String str=null;
		while((str=reader.readLine())!=null) {
			sb.append(str);
		}
		String info=URLDecoder.decode(sb.toString(),"utf-8");
		
		String[] s = info.split("&");
		
		String lng = s[0].substring(s[0].indexOf("=")+1);
		String lat = s[1].substring(s[0].indexOf("=")+1);
		
		request.getSession().setAttribute("lng", lng);
		request.getSession().setAttribute("lat", lat);
		System.out.println(lng);
		System.out.println(lat);
	}

}
