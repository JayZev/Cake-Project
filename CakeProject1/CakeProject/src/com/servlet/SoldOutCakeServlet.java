package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Cake;
import com.bean.Sell;
import com.service.ICakeService;
import com.service.impl.CakeService;


public class SoldOutCakeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ICakeService cservice;  
   
    public SoldOutCakeServlet() {
        super();
        
    }
    
    @Override
    public void init() throws ServletException {
    	cservice = new CakeService();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter pwt=response.getWriter();
		int cid = Integer.parseInt(request.getParameter("id").trim());
		String state = request.getParameter("state").trim();
		Cake cake=new Cake(cid);
		cake.setC_state(state);
		if(cservice.soldOutCake(cake)) {
			pwt.println("<html><head></head><body><h1 style='color:green;'>商品"+state+"成功，1秒后自动返回新增商品界面</h1></body></html>");
			response.addHeader("Refresh", "1; url=TB/AddCake.jsp");
		}else {
			pwt.println("<html><head></head><body><h1 style='color:red;'>商品"+state+"失败，1秒后自动返回新增商品界面</h1></body></html>");
			response.addHeader("Refresh", "1; url=TB/AddCake.jsp");
		}
	}

}
