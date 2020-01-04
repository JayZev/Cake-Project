package com.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Car;
import com.bean.User;
import com.service.InfCarService;
import com.service.impl.ImplCarService;

/**
 * Servlet implementation class AddCartServlet
 */
public class AddCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private InfCarService carService;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCartServlet() {
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
		System.out.println("info="+info);
		
		String[] s = info.split("&");
		int c_id = Integer.parseInt(s[0].substring(s[0].indexOf("=")+1));
		int car_num = Integer.parseInt(s[1].substring(s[1].indexOf("=")+1));
		
		
		//int u_id = ((User)request.getSession().getAttribute("userInfo")).getU_id();
		if ((User)request.getSession().getAttribute("userInfo") == null) {
			response.sendRedirect("login.html");
			return;
		}
		int u_id = ((User)request.getSession().getAttribute("userInfo")).getU_id();
		
		Car c = carService.selectCakeByUIdAndCId(u_id, c_id);
		if (c == null) {
			Car car = new Car(1, u_id, c_id, car_num);
			carService.insertCake(car);
		} else {
			carService.updateCarByCarId(c.getCar_id(), c.getCar_num()+car_num);
		}
		
		
	}

}
