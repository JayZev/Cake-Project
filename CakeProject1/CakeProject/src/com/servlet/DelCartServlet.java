package com.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.InfCarService;
import com.service.impl.ImplCarService;

/**
 * Servlet implementation class DelCartServlet
 */
public class DelCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private InfCarService carService;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    public void init() throws ServletException {
    	carService = new ImplCarService();
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
		BufferedReader reader=request.getReader();
		StringBuilder sb=new StringBuilder();
		String str=null;
		while((str=reader.readLine())!=null) {
			sb.append(str);
		}
		String info=URLDecoder.decode(sb.toString(),"utf-8");
//		System.out.println(info);
		int car_id = Integer.parseInt(info.substring(info.indexOf("=")+1));
		carService.delteCarByCarId(car_id);
		request.getRequestDispatcher("Zev/delcart.jsp").forward(request, response);
	}

}
