package com.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.net.URLDecoder;
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
 * Servlet implementation class CheckoutServlet
 */
public class CheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private InfSellService sellService;
    private InfCarService carService;
    private InfDetailService detailService;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckoutServlet() {
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
		
		String address = request.getParameter("address");
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String phone = request.getParameter("phone");
		String time = request.getParameter("times");
		String money = request.getParameter("money");
		String freight = request.getParameter("freight");
		

		
		
		
		String out_trade_no = request.getParameter("id");
		request.setAttribute("out_trade_no", out_trade_no);
		request.setAttribute("WIDtotal_amount", money);
		
		
		System.out.println(freight);
		System.out.println(money);
		
		
		
		
		Sell sell = new Sell(0, u_id, "", "未完成", name, address, Float.parseFloat(money),Float.parseFloat(freight));
		
		sell.setS_phone(phone);
		Date date = new Date();
		String localTime = date.toLocaleString();
		
		time = localTime.substring(0, localTime.indexOf(" ")+1)+time;
				
		sell.setS_predict(time);
		sell.setS_sex(sex);
		
		sellService.insertSell(sell);
		int s_id = sellService.selectMaxSId();
		
		
		for (String s : car_id) {
			System.out.println(s);
			int id = Integer.parseInt(s);
			Car c = carService.selectCarByCarId(id);
			Detail d = new Detail(0, s_id, c.getCar_num(), c.getC_id());
			detailService.insertDetail(d);
			carService.delteCarByCarId(c.getCar_id());
		}
		
		request.getRequestDispatcher("alipay.trade.page.pay.jsp").forward(request, response);
	}

}
