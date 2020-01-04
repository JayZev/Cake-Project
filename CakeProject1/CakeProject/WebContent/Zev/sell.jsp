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

<!-- Custom Theme files -->
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Cake&#39;s Dream is Beautiful Template " name="description">
    <meta content="" name="author">
    <link href="../static/assets/images/favicon-32x32.png" rel="shortcut icon">
    <title>Cake's Dreams</title>
    <link href="../static/Zev/assets/stylesheets/css/bootstrap.css" rel="stylesheet">
    <link href="../static/Zev/assets/stylesheets/css/font-family.css" rel="stylesheet">
    <link href="../static/Zev/assets/stylesheets/css/responsive.css" rel="stylesheet">
    <link href="../static/Zev/assets/stylesheets/css/slick.css" rel="stylesheet">
    <link href="../static/Zev/assets/stylesheets/css/slick-theme.css" rel="stylesheet">
    <link href="../static/Zev/assets/stylesheets/css/style.css" rel="stylesheet">
    <link href="../static/Zev/assets/stylesheets/css/animate.css" rel="stylesheet">
    <link href="../static/Zev/assets/javascripts/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css">
    <link href="../static/Zev/assets/stylesheets/css/global.css" rel="stylesheet">
    <link href="../static/Zev/assets/stylesheets/css/effect2.css" rel="stylesheet" type="text/css">
    <script src="../static/Zev/assets/javascripts/modernizr.custom.js"></script>
    
    
    
    
	<link href="../static/Zev/css/bootstrap.css" rel="stylesheet">
	<link href="../static/Zev/css/styles.css" rel="stylesheet">
	<link href="../static/Zev/css/css.css" rel="stylesheet"> 
	<link href="../static/Zev/css/font-awesome.min.css" rel="stylesheet">
	<script src="../static/Zev/assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="../static/Zev/assets/js/modernizr.custom.js"></script>
	<script type="text/javascript" src="../static/Zev/assets/js/bootstrap.min.js"></script>
	
	<script>
		function fun() {
			alert("可以哦");
		}

		
		function page(index) {
			if (index > pageSize) {
				index = pageSize;
			} else if (index < 1 ) {
				index = 1;
			}
			
			console.log("来了来了");
			window.location.href="sell.jsp?pageId="+index;
// 			if (index > pageSize) {
// 				index = pageSize;
// 			} else if (index < 1 ) {
// 				index = 1;
// 			}
			
// 			$.ajax({
// 				url:"selltable.jsp",
// 				type:"post",
// 				data: {pageId:index,pageNum:num,size:pageSize},
// 				success: function(data){
// 					$("#content").html(data);
// 				}
// 			});
			
			
		}
	</script>
	<style>
    <!--
		.btn-list-group {
    		position: relative;
		}
		.btn-list-area {
		    display:none;
		    position: absolute;
		    left:0;
		    right:0;
		}
		.btn-list-group:hover .btn-list-area {
		  display: block; 
		  background-color:#ffffff;
		}
		.mybtn {
		    display: inline-block;
		    padding: .4em .7em;
		    text-align: center;
		    line-height: 1.5;
		    border: 0px solid ;
		    cursor: pointer;
		    width: 100px;
		
		}
    -->
    </style>
</head>
<body>
	<div class="ip-container" id="ip-container">
      <!--initial header-->
      <header class="ip-header">
        <div class="ip-loader">
          <svg class="ip-inner" height="60px" viewbox="0 0 80 80" width="60px"><path class="ip-loader-circlebg" d="M40,10C57.351,10,71,23.649,71,40.5S57.351,71,40.5,71 S10,57.351,10,40.5S23.649,10,40.5,10z"></path><path class="ip-loader-circle" d="M40,10C57.351,10,71,23.649,71,40.5S57.351,71,40.5,71 S10,57.351,10,40.5S23.649,10,40.5,10z" id="ip-loader-circle"></path></svg>
        </div>
      </header>
      
      
      
      
      <!--main content-->
      <div class="ip-main">
        <div class="top-highlight hide">
          &nbsp;
        </div>
        <!-- Start Header Cake -->
        <section class="header-wrapper">
          <header class="wrap-header purple-top-dot">
            <div class="top-absolute">
              <div class="top-header">
                <div class="container">
                  <div class="navbar-header visible-xs">
                    <button class="navbar-toggle toggle-cake show-menu"><span class="sr-only">Toggle Navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand navbar-cake" href="#"><img alt="Logo-White" src="../static/Zev/assets/images/logo-100.png"></a>
                  </div>
                  <nav>
                    <ul class="header-nav hidden-xs">
                      <li>
                        <a href="../index.jsp"><font size="+1">首页</font></a>
                      </li>
                      <li>
                        <a href="shop.jsp"><font size="+1">购物中心</font></a>
                      </li>
                      <li class="pad-top-0i">
                        <img alt="Logo-White" src="../static/Zev/assets/images/logo-150.png">
                      </li>
                      
                      
                      
                      <li>
                        <span class="btn-list-group">
						<a class="mybtn"><font size="+1">账户</font></a>
                           <% 
                             User name=(User)session.getAttribute("userInfo");
                              if(name!=null){
                                             %> 
                           <span class="btn-list-area"> 
                           <a href="cart.jsp" id="message" class="mybtn">
                           <font size="+1">购物车</font></a><br> 
							<a href="#" id="car" class="mybtn"><font size="+1">个人资料</font></a>
							<a href="sell.jsp" id="shoping" class="mybtn"><font size="+1">订单中心</font></a>
							<a href="../ExitServlet" id="exit" class="mybtn"><font size="+1">退出</font></a>
						</span>
						<%
                           }
                         %>
					</span>
                      </li>
                      
                      
                      
                      <li>
                        <a href="feedback.jsp"><font size="+1">反馈</font></a>
                      </li>
                    </ul>
                  </nav>
                  
                  
                  
                  
                  <!-- Start Mega Menu Cake -->
					
                </div>
              </div>
              <div class="triangle">
                &nbsp;
              </div>
            </div>
            <div class="tittle-sub-top pad-top-150">
              <div class="container">
               
                <h2>
                  	历史订单
                </h2>
              </div>
            </div>
          </header>
          <div class="purple-arrow">
            &nbsp;
          </div>
        </section>
        <!-- End Header Cake -->
        
        
        
        
     <%
     	//int u_id = 1;
     	User user = (User)session.getAttribute("userInfo");
     	int u_id = user.getU_id();
     	
     	
     	int pageId;
     	String index = request.getParameter("pageId");
     	if (index == null || "".equals(index)) {
     		pageId = 1;
     	} else {
     		pageId = Integer.parseInt(index);
     	}
     	
     
     	int num = 5;
     	InfSellService sellService = new ImplSellService();
     	int totalNum = sellService.selectTotalSellByUId(u_id);
     	List<Sell> list = sellService.selectSellByUIdAndPaging(u_id, pageId, num);
     	
     	InfDetailService detailService = new ImplDetailService();
     %>
	<div id="content" class="col-md-10 col-md-offset-1">
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
							<a href="../single.jsp?c_id=<%=detailList.get(i).getC_id() %>">
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
		    <c:forEach var="i" begin="1" end="<%=totalNum/num+(totalNum%num > 0 ? 1 : 0) %>">
		    	<li><a href="javascript:page(${i })">${i }</a></li>
		    </c:forEach>
		    
		    <li>
		      <a href="javascript:page(<%=pageId+1 %>)" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
	</div>	
        
        
        
        
        
        
        
        
        
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
    
    <script type="text/javascript">
      new WOW().init();
    </script>
	<script type="text/javascript" id="sourcecode">
		var pageSize = <%=totalNum/num+(totalNum%num > 0 ? 1 : 0) %>;
		
		
		var num = <%=num %>;
		$(function()
		{
			$('.scroll-pane').jScrollPane();
		});
		
	</script>
</body>
</html>