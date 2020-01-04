package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Manage;
import com.service.IManageService;
import com.service.impl.ManageService;


public class ManageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	IManageService mservice;
    public ManageServlet() {
        super();
        
    }
    
    @Override
    public void init() throws ServletException {
    	mservice = new ManageService();
    	
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		Manage manage  = (Manage)session.getAttribute("manageInfo");
		// 防止管理员在未登录的情况下，直接通过url访问此servlet
		if (manage == null) {
			request.setAttribute("msg", "null");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
	}
		

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		String mname = request.getParameter("m_name");
		System.out.println(mname);
		String mpwd = request.getParameter("m_pwd");
		System.out.println(mpwd);
		HttpSession session = request.getSession();
		if(mservice.validateNameAndPwd(mname, mpwd)) {
			Manage manage = mservice.getAdminInfo(mname);
			session.setAttribute("manageInfo", mname);
			session.setAttribute("managePwd", mpwd);
			response.sendRedirect("TB/index.jsp");
		}else {
			request.setAttribute("msg", "erroPwd");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
