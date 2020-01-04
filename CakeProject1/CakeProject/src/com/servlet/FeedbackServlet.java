package com.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Feedback;
import com.dao.InfFeedbackDao;
import com.dao.impl.ImplFeedbackDao;
import com.service.InfFeedbackService;
import com.service.impl.ImplFeedbackService;


public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	InfFeedbackService service;
       
    public FeedbackServlet() {
        super();
       
    }

    public void init() throws ServletException {
    	service=new ImplFeedbackService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		BufferedReader reader=request.getReader();
		StringBuilder sb=new StringBuilder();
		String str=null;
		while((str=reader.readLine())!=null) {
			sb.append(str);
		}
		String info=URLDecoder.decode(sb.toString(),"utf-8");
		
		System.out.println(info);
		
		String[] s = info.split("&");
		String name=s[0].trim().substring(s[0].trim().indexOf("=")+1);
		String email=s[1].trim().substring(s[1].trim().indexOf("=")+1);
		String telephone=s[2].trim().substring(s[2].trim().indexOf("=")+1);
		String area=s[3].trim().substring(s[3].trim().indexOf("=")+1);

		Feedback feedback=new Feedback();
		feedback.setF_name(name);
		feedback.setF_email(email);
		feedback.setF_telephone(telephone);
		feedback.setF_content(area);
		
		InfFeedbackDao feedbackDao=new ImplFeedbackDao();
		feedbackDao.addMessage(feedback);
	}
}
