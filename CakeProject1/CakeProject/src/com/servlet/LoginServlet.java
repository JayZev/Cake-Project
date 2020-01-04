package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.User;
import com.service.IUserService;
import com.service.impl.UserService;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String username = request.getParameter("name").trim();
		String userpwd = request.getParameter("password").trim();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter pw = response.getWriter();
		pw.println("<html><head><title>登录信息</title></head><body>");
		IUserService userser = new UserService();
		if (userser.isLogin(username, userpwd)) {
			User user = userser.query(username, userpwd);
			request.getSession().setAttribute("userInfo", user);
			response.sendRedirect("index.jsp");
			
		} else {
			pw.println("<center><font color='gray' size='+4'>登录失败</font><hr>");
			pw.println("<p>返回重新 <a href='login.html'>登录</a></center>");
		}
		pw.println("</body></html>");
		pw.flush();
		pw.close();
	}

}
