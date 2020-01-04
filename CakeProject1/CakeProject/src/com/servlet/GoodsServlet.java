package com.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.InfCakeService;
import com.service.impl.ImplCakeService;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class GoodsServlet
 */
public class GoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private InfCakeService cakeService; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GoodsServlet() {
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
		BufferedReader reader=request.getReader();
		StringBuilder sb=new StringBuilder();
		String str=null;
		while((str=reader.readLine())!=null) {
			sb.append(str);
		}
		String info=URLDecoder.decode(sb.toString(),"utf-8");
		
		System.out.println(info);
		
		
		info = info.substring(info.indexOf("=")+1);
		
		int num = Integer.parseInt(info.substring(info.lastIndexOf("=")+1));
		info = info.substring(0,info.lastIndexOf("&"));
		int pageId = Integer.parseInt(info.substring(info.lastIndexOf("=")+1));
		
		info = info.substring(0, info.lastIndexOf("&"));
		String[] s = info.split("&");
		
		Map<String, List<String>> map = new HashMap<String, List<String>>();
		
		String type = (String)request.getSession().getAttribute("type");
		System.out.println(type);
		request.setAttribute("pageId", pageId);
		for (String string : s) {
			int index = string.indexOf(":");
			if (index == -1) {
				List list = cakeService.queryAllCakeByPaging(pageId, num);
				int size = cakeService.getAllCake().size();
				
				//list.add(size / num + (size % num > 0 ? 1 : 0));
				
				JSONArray jsonArr = JSONArray.fromObject(list);
//				response.getWriter().print(jsonArr.toString());

				request.setAttribute("list", list);
				request.setAttribute("pageSize", size / num + (size % num > 0 ? 1 : 0));
				request.getRequestDispatcher("Zev/check.jsp").forward(request, response);
				request.setAttribute("target", "show");
				request.setAttribute("type", type);
				return;
			}
			string = string.substring(0, string.indexOf("="));
//			String r = string.substring(0, index);
			String[] result = string.split(":");
			if (map.containsKey(result[0])) {
				map.get(result[0]).add(result[1]);
			} else {
				List<String> l = new ArrayList<String>();
				l.add(result[1]);
				map.put(result[0], l);
			}
		}
		
//		String type = (String)request.getSession().getAttribute("type");
		if (!type.equals("所有蛋糕")) {
			List<String> l = new ArrayList<String>();
			l.add(type);
			map.put("c_type", l);
		}
		List list = cakeService.queryCakeByConditionByPaging(map,pageId,num);
		int size = cakeService.queryCakeByCondition(map).size();
		
		//list.add(size / num + (size % num > 0 ? 1 : 0));
		
		JSONArray jsonArr = JSONArray.fromObject(list);
		//response.getWriter().print(jsonArr.toString());
		
		request.setAttribute("list", list);
		request.setAttribute("pageSize", size / num + (size % num > 0 ? 1 : 0));
		request.setAttribute("target", "show");
		request.setAttribute("type", type);
		request.getRequestDispatcher("check.jsp").forward(request, response);
	}

}
