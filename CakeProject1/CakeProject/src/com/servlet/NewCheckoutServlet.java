package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Car;
import com.bean.CheckoutList;
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
 * Servlet implementation class NewCheckoutServlet
 */
public class NewCheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private InfSellService sellService;
    private InfCarService carService;
    private InfDetailService detailService;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewCheckoutServlet() {
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
		
		
		CheckoutList ckList = (CheckoutList)request.getSession().getAttribute("checkoutInfo");
		
		System.out.println(ckList);
		
		Sell sell = new Sell();
		sell.setU_id(u_id);
		sell.setS_condition("未完成");
		sell.setS_consignee(ckList.getName());
		sell.setS_address(ckList.getAddress());
		sell.setS_money(ckList.getMoney());
		sell.setS_freight(ckList.getFreight());
		sell.setS_sex(ckList.getSex());
		sell.setS_phone(ckList.getPhone());
		
		Date date = new Date();
		String localTime = date.toLocaleString();
		String time = localTime.substring(0, localTime.indexOf(" ")+1)+ckList.getTime();

		sell.setS_predict(time);
		
		sellService.insertSell(sell);
		int s_id = sellService.selectMaxSId();
		
		
		String info = ckList.getDetail();
		info = info.substring(1,info.length()-1);
		
		String[] car_id = info.split(",");
		
		for (String s : car_id) {
			int id = Integer.parseInt(s);
			Car c = carService.selectCarByCarId(id);
			Detail d = new Detail(0, s_id, c.getC_id(), c.getCar_num());
			detailService.insertDetail(d);
			carService.delteCarByCarId(c.getCar_id());
		}
		
		
		request.getSession().setAttribute("checkoutInfo", null);
		
		response.sendRedirect("Zev/sell.jsp");
		
	}

}
