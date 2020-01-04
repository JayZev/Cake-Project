package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.IUserService;
import com.service.impl.UserService;

public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("1111");
		request.setCharacterEncoding("UTF-8");
		String u_appellation = request.getParameter("Reg_name").trim();
		String userPhone = request.getParameter("Reg_mobile").trim();
		String userPwd = request.getParameter("Reg_password2").trim();
		String userSex = request.getParameter("Reg_sex").trim();
		String userAddress = request.getParameter("Reg_address").trim();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter pw = response.getWriter();
		pw.println("<html><head><title>登录信息</title></head><body>");
		IUserService userser = new UserService();
		
		String userName = "";
		
		if (userser.addUser(u_appellation,userPwd,userPhone,userSex,userAddress, userName)) {
			request.getSession().setAttribute("userInfo", userser);
			response.sendRedirect("login.html");
		} else {
			pw.println("<font color='gray' size='+5'>注册失败</font><hr>");
		}
		pw.println("</body></html>");
		pw.flush();
		pw.close();
	}

}
