<%@page import="com.bean.User"%>
<%@page import="com.bean.DetailList"%>
<%@page import="com.service.impl.ImplDetailService"%>
<%@page import="com.service.InfDetailService"%>
<%@page import="com.bean.Sell"%>
<%@page import="java.util.List"%>
<%@page import="com.service.impl.ImplSellService"%>
<%@page import="com.service.InfSellService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<link href="../static/Zev/css/bootstrap.css" rel="stylesheet">
	<link href="../static/Zev/css/styles.css" rel="stylesheet">
	<link href="../static/Zev/css/css.css" rel="stylesheet"> 
	<link href="../static/Zev/css/font-awesome.min.css" rel="stylesheet">
	<script src="../static/Zev/assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="../static/Zev/assets/js/modernizr.custom.js"></script>
	<script type="text/javascript" src="../static/Zev/assets/js/bootstrap.min.js"></script>
	
	<script>
		console.log("来了 老弟");
	</script>
</head>
<body>
	<%
		User user = (User)session.getAttribute("userInfo");
	 	int u_id = user.getU_id();
     	
	
		String index = request.getParameter("pageId");	
		String pageNum = request.getParameter("pageNum");
		String size = request.getParameter("size");
		int pageSize = Integer.parseInt(size);
		int pageId = Integer.parseInt(index);
     	int num = Integer.parseInt(pageNum);
     	
     	InfSellService sellService = new ImplSellService();
     	int totalNum = sellService.selectTotalSellByUId(u_id);
     	List<Sell> list = sellService.selectSellByUIdAndPaging(u_id, pageId, num);
     	
     	InfDetailService detailService = new ImplDetailService();
     %>
	<table id="myTable" class="table table-hover">
			<tr>
				<th>蛋糕图片</th>
				<th>蛋糕名称</th>
				<th>单价</th>
				<th>数量</th>
				<th>实付金额</th>
				<th>订单状态</th>
				<th></th>
			</tr>
			<%
				for(Sell s : list) {
					List<DetailList> detailList = detailService.selectDetailBySId(s.getS_id());
			%>		
				
				<tr class="warning" onClick="jacascript:window.location.href='selldetail.jsp?s_id=<%=s.getS_id() %>'">
					<td><%=s.getS_time() %></td>
					<td>订单号：<%=s.getS_id() %></td>
				</tr>
				<%
					for (int i = 0; i < detailList.size(); i++) {
				%>		
					<tr>
						<td>
							<a href="single.jsp?c_id=<%=detailList.get(i).getC_id() %>">
							<img src="../<%=detailList.get(i).getC_image() %>" width="100px" class="img-responsive" alt="Responsive image">
							</a>
						</td>
						<td><%=detailList.get(i).getC_name() %></td>
						<td>¥ <%=detailList.get(i).getC_price() %></td>
						<td><%=detailList.get(i).getD_num() %></td>
						<%
							if (i == 0) {
						%>
							<td rowspan="<%=detailList.size() %>"><b>¥ <%=s.getS_money() %></b></td>
							<td rowspan="<%=detailList.size() %>"><%=s.getS_condition() %></td>
							<td rowspan="<%=detailList.size() %>">
<%-- 							<c:if test="<%=!s.getS_condition().equals(\"未完成\") %>"> --%>
<!-- 								<button type="button" class="btn btn-info">评价</button> -->
<%-- 							</c:if> --%>
							</td>
						<%		
							}
						%>
						
					</tr>
				<%		
					}
				%>
				
			<%		
				}
			%>
			
		</table>
	
	
		<nav aria-label="Page navigation" >
		  <ul class="pagination">
		    <li>
		      <a href="javascript:page(<%=pageId-1 %>)" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <c:forEach var="i" begin="1" end="<%=pageSize/num+(pageSize%num > 0 ? 1 : 0) %>">
		    	<li><a href="javascript:page(${i })">${i }</a></li>
		    </c:forEach>
		    
		    <li>
		      <a href="javascript:page(<%=pageId+1 %>)" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
	
	
	
	
	
	
	<script src="../static/Zev/assets/javascripts/jquery.js"></script>
    <script src="../static/Zev/assets/javascripts/fancybox/jquery.fancybox.pack.js"></script>
    <script src="../static/Zev/assets/javascripts/slick.js"></script>
    <script src="../static/Zev/assets/javascripts/wow/wow.js"></script>
    <script src="../static/Zev/assets/javascripts/custom.js"></script>
    <script src="../static/Zev/assets/javascripts/bootstrap.js"></script>
    <script src="../static/Zev/assets/javascripts/classie.js"></script>
    <script src="../static/Zev/assets/javascripts/pathLoader.js"></script>
    <script src="../static/Zev/assets/javascripts/main.js"></script>
    <script type="text/javascript" src="../static/Zev/assets/layer/2.4/layer.js"></script> 
    
    <script type="text/javascript" src="https://cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>
</body>
</html>