<%@page import="com.bean.User"%>
<%@page import="com.bean.Cake"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="static/Zev/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="static/Zev/css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="static/Zev/css/form.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="static/Zev/js/jquery.min.js"></script>
<script type="text/javascript" src="static/Zev/js/bootstrap-3.1.1.min.js"></script>
<!-- //js -->	
<!-- cart -->
<script src="static/Zev/js/simpleCart.min.js"> </script>
<!-- cart -->
<!-- the jScrollPane script -->
<script type="text/javascript" src="static/Zev/js/jquery.jscrollpane.min.js"></script>
<!-- //the jScrollPane script -->
<script type="text/javascript" src="static/Zev/js/jquery.mousewheel.js"></script>
<!-- the mousewheel plugin -->	

<link rel="stylesheet" href="static/Zev/assets/layer/2.4/skin/layer.css">
<script>

$(document).ready(function() {
	
	
	$(".item_add.items").click(function() {
		var id = $(this).parent().children("input").first().val();
		var num = $(this).parent().children("input").first().next().val();
		<%
			User user = (User)session.getAttribute("userInfo");
			if (user == null) {
		%>		
			window.location.href="login.html";
			return;
		<%		
			}
		%>
		$.ajax({
			url:"AddCartServlet",
			type:"post",
			data: {"id":id,"num":num},
			success: function(data){
				 layer.msg('添加成功',{icon:1});
			}
		});
	});
});
</script>

</head>
<body>
	<%
		List<Cake> list = (ArrayList<Cake>)request.getAttribute("list");
		int pageId = (Integer)request.getAttribute("pageId");
		int pageSize = (Integer)request.getAttribute("pageSize");
		String target = (String)request.getAttribute("target");
		String type = (String)request.getAttribute("type");
	%>
	<c:forEach var="cake" items="<%= list %>">
		<div class="product-grid">
			<a href="single.jsp?c_id=${cake.c_id }">				
				<div class="more-product"><span> </span></div>						
				<div class="product-img b-link-stripe b-animate-go  thickbox">
					<img src="${cake.c_image }" class="img-responsive" alt="">
					<div class="b-wrapper">
						<h4 class="b-animate b-from-left  b-delay03">							
							<button>View</button>
						</h4>
					</div>
				</div>
			</a>				
			<div class="product-info simpleCart_shelfItem">
				<div class="product-info-cust prt_name">
					<h4>${cake.c_name }</h4>								
					<span class="item_price">¥${cake.c_price }</span>
					<input type="hidden" value="${cake.c_id }" />
					<input type="text" class="item_quantity" value="1" oninput = "value=value.replace(/[^\d]/g,'')" onchange="value=(value<1 || value=='')?1:value" />
					<input type="button" class="item_add items" value="Add">
					<div class="clearfix"> </div>
				</div>												
			</div>
		</div>
	</c:forEach>
	<%
		if (pageSize > 1) {
	%>
			<div class="col-md-9" id="paging" style="float:right">
			<div class="demo" style="text-align:center">
			  <ul class="pagination pagination_type1">
			    <li class="pagination__item"><a href="javascript:<%=target %>(<%=pageId-1 %>,'<%=type %>')" class="pagination__number"><span class="pagination__control pagination__control_prev">上一页</span></a></li>
			    
			    <c:forEach var="i" begin="1" end="<%=pageSize %>">
			    	<li class="pagination__item"><a href="javascript:<%=target %>(${i },'<%=type %>')">${i }</a></li>
			    </c:forEach>
			    
			    <li class="pagination__item"><a href="javascript:<%=target %>(<%=pageId+1 %>,'<%=type %>')"><span class="pagination__control pagination__control_next">下一页</span></a></li>
			  </ul>
			</div>
		</div>
	<%
		}
	%>
	
    <script type="text/javascript" src="static/Zev/assets/layer/2.4/layer.js"></script> 
	
</body>
</html>