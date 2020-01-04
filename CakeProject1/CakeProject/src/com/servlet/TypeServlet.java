package com.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.InfCakeService;
import com.service.impl.ImplCakeService;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class TypeServlet
 */
public class TypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private InfCakeService cakeService; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TypeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init() throws ServletException {
    	cakeService = new ImplCakeService();
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
		response.setContentType("application/json");
		
		int num = 9;
		
		BufferedReader reader=request.getReader();
		StringBuilder sb=new StringBuilder();
		String str=null;
		while((str=reader.readLine())!=null) {
			sb.append(str);
		}
		String info=URLDecoder.decode(sb.toString(),"utf-8");
		System.out.println(info);
		
		String[] s = info.split("&");
		
		String type = s[0].substring(s[0].indexOf("=")+1);
		String index = s[1].substring(s[0].indexOf("=")+1);
		
		request.setAttribute("type", type);
		request.getSession().setAttribute("type", type);
		System.out.println(type);
		System.out.println(index);
		int pageNum = 0;
		List list = null;
		

		request.setAttribute("pageId", Integer.parseInt(index));
		if (type.equals("所有蛋糕")) {
			list = cakeService.queryAllCakeByPaging(Integer.parseInt(index), num);
			int size = cakeService.getAllCake().size();
			pageNum = size / num + (size % num > 0 ? 1 : 0);
//			request.getSession().setAttribute("pageNum", size / num + (size % num > 0 ? 1 : 0));
			
			System.out.println(pageNum);
			
			//list.add(pageNum);
			JSONArray jsonArr = JSONArray.fromObject(list);
			//response.getWriter().print(jsonArr.toString());
		} else {
			list = cakeService.selectCakeByTypeAndPaging(type, Integer.parseInt(index), 9);
			int size = cakeService.selectCakeByType(type).size();
			pageNum = size / num + (size % num > 0 ? 1 : 0);
//			request.getSession().setAttribute("pageNum", cakeService.selectCakeByType(type).size());
			//list.add(pageNum);
			JSONArray jsonArr = JSONArray.fromObject(list);
			//response.getWriter().print(jsonArr.toString());
		}

		request.setAttribute("list", list);
		request.setAttribute("type", type);
		request.setAttribute("pageSize", pageNum);
		request.setAttribute("target", "navigation");
		request.getRequestDispatcher("check.jsp").forward(request, response);
		
		
		
	}

}
