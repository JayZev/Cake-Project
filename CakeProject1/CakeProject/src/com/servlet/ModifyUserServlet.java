package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.User;
import com.service.InfUserService;
import com.service.impl.ImplUserService;

/**
 * Servlet implementation class ModifyUserServlet
 */
public class ModifyUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private InfUserService userService; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub
    	userService = new ImplUserService();
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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
//		appellation:u_appellation,phone:u_phone,address:u_address,name:u_name,sex:u_sex
		String u_appellation = request.getParameter("appellation");
		String u_phone = request.getParameter("phone");
		String u_address = request.getParameter("address");
		String u_name = request.getParameter("name");
		String u_sex = request.getParameter("sex");
		
		String sex = u_sex.equals("先生") ? "男" : "女";
		
		User user = (User)request.getSession().getAttribute("userInfo");
		user.setU_appellation(u_appellation);
		user.setU_phone(u_phone);
		user.setU_address(u_address);
		user.setU_name(u_name);
		user.setU_sex(sex);
		request.getSession().setAttribute("userInfo", user);
		userService.updateUserById(user);
		
	}

}
