package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.bean.Manage;
import com.service.IManageService;
import com.service.impl.ManageService;


public class SettingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IManageService mservice;   
    
    public SettingServlet() {
        super();
        
    }
    
    @Override
    public void init() throws ServletException {
    	mservice = new ManageService();
    	
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter pwt=response.getWriter();
		HttpSession session=request.getSession(false);
		String name = session.getAttribute("manageInfo").toString();
		System.out.println(name);
		String	pwd = request.getParameter("pwd1");
		System.out.println(pwd);
		Manage manage = new Manage(name,pwd);
		if(mservice.settingManage(manage)) {
			pwt.println("<html><head></head><body><h1 style='color:green;'>密码修改成功，1秒后自动返回后台首页</h1></body></html>");
			response.addHeader("Refresh", "1; url=TB/index.jsp");
		}else {
			pwt.println("<html><head></head><body><h1 style='color:red;'>密码修改失败，1秒后自动返回设置界面</h1></body></html>");
			response.addHeader("Refresh", "1; url=TB/Setting.jsp");
		}
		
		
		
	}

}
