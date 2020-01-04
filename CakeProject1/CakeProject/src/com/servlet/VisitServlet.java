package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Car;
import com.bean.Detail;
import com.bean.Sell;
import com.bean.User;
import com.service.InfCarService;
import com.service.InfDetailService;
import com.service.InfSellService;
import com.service.impl.ImplCarService;
import com.service.impl.ImplDetailService;
import com.service.impl.ImplSellService;

/**
 * Servlet implementation class VisitServlet
 */
public class VisitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private InfSellService sellService;
    private InfCarService carService;
    private InfDetailService detailService;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VisitServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    public void init() throws ServletException {
    	sellService = new ImplSellService();
    	carService = new ImplCarService();
    	detailService = new ImplDetailService();
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

		
		int u_id = ((User)request.getSession().getAttribute("userInfo")).getU_id();
		
		String info = request.getParameter("info");
		info = info.substring(1,info.length()-1);
		String[] car_id = info.split(",");
		

		String phone = request.getParameter("phone");
		String time = request.getParameter("time");
		String money = request.getParameter("money");
		Date date = new Date();
		String localTime = date.toLocaleString();
		
		time = localTime.substring(0, localTime.indexOf(" ")+1)+time;
		
		Sell sell = new Sell();
		sell.setU_id(u_id);
		sell.setS_phone(phone);
		sell.setS_predict(time);
		sell.setS_money(Float.parseFloat(money));
		sellService.addSellByVisit(sell);
		int s_id = sellService.selectMaxSId();
		for (String s : car_id) {
			int id = Integer.parseInt(s);
			Car c = carService.selectCarByCarId(id);
			Detail d = new Detail(0, s_id, c.getCar_num(), c.getC_id());
			detailService.insertDetail(d);
			carService.delteCarByCarId(c.getCar_id());
		}
		
		response.sendRedirect("Zev/sell.jsp");
		
		
	}

}
