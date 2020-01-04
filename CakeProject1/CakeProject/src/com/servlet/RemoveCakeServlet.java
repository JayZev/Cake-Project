package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.ICakeService;
import com.service.impl.CakeService;


public class RemoveCakeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ICakeService cservice;   
    
    public RemoveCakeServlet() {
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
		String cid=request.getParameter("id");
		System.out.println(cid);
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter pwt=response.getWriter();
		if(cservice.removeCakeInfo(cid)){
			pwt.println("<html><head></head><body><h1 style='color:green;'>商品删除成功，1秒后自动返回删除商品界面</h1></body></html>");
			response.addHeader("Refresh", "1; url=TB/RemoveCake.jsp");
		}else{
			pwt.println("<html><head></head><body><h1 style='color:red;'>商品删除失败，1秒后自动返回删除商品界面</h1></body></html>");
			response.addHeader("Refresh", "1; url=TB/RemoveCake.jsp");
		}
	}

}
