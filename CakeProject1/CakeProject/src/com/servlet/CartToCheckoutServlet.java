package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.User;
import com.service.InfCarService;
import com.service.impl.ImplCarService;

/**
 * Servlet implementation class CartToCheckoutServlet
 */
public class CartToCheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private InfCarService carService;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartToCheckoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    public void init() throws ServletException {
    	InfCarService carService = new ImplCarService();
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
		
		String[] date = request.getParameterValues("myhidden");
		System.out.println(date);
		
		
		
	}

}
