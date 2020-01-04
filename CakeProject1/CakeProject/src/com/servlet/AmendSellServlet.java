package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Sell;
import com.service.ISellService;
import com.service.impl.SellService;


 
public class AmendSellServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ISellService sservice;  
    
    public AmendSellServlet() {
        super();
        
    }
    
    @Override
    public void init() throws ServletException {
    	sservice =new  SellService();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter pwt=response.getWriter();
		int sid = Integer.parseInt(request.getParameter("id").trim());
		Sell sell = new Sell(sid);
		if(sservice.amendSellInfo(sell)) {
			pwt.println("<html><head></head><body><h1 style='color:green;'>订单处理成功，1秒后自动返回历史订单界面</h1></body></html>");
			response.addHeader("Refresh", "1; url=TB/Sell.jsp");
		}else {
			pwt.println("<html><head></head><body><h1 style='color:red;'>订单处理失败，1秒后自动返回历史订单界面</h1></body></html>");
			response.addHeader("Refresh", "1; url=TB/Sell.jsp");
		}
	}

}
