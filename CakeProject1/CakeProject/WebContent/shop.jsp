
<%@page import="com.bean.User"%>
<%@page import="com.service.InfCakeService"%>
<%@page import="com.bean.Cake"%>
<%@page import="java.util.List"%>
<%@page import="com.service.impl.ImplCakeService"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js" lang="en">
  <head>
<!-- Custom Theme files -->
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Cake&#39;s Dream is Beautiful Template " name="description">
    <meta content="" name="author">
    <link href="static/assets/images/favicon-32x32.png" rel="shortcut icon">
    <title>Cake's Dreams</title>
    <link href="static/Zev/assets/stylesheets/css/bootstrap.css" rel="stylesheet">
    <link href="static/Zev/assets/stylesheets/css/font-family.css" rel="stylesheet">
    <link href="static/Zev/assets/stylesheets/css/responsive.css" rel="stylesheet">
    <link href="static/Zev/assets/stylesheets/css/slick.css" rel="stylesheet">
    <link href="static/Zev/assets/stylesheets/css/slick-theme.css" rel="stylesheet">
    <link href="static/Zev/assets/stylesheets/css/style.css" rel="stylesheet">
    <link href="static/Zev/assets/stylesheets/css/animate.css" rel="stylesheet">
    <link href="static/Zev/assets/javascripts/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css">
    <link href="static/Zev/assets/stylesheets/css/global.css" rel="stylesheet">
    <link href="static/Zev/assets/stylesheets/css/effect2.css" rel="stylesheet" type="text/css">
    <script src="static/Zev/assets/javascripts/modernizr.custom.js"></script>
	
	
	
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
<link href="static/Zev/css/feedback.css" type="text/css" rel="stylesheet" media="all"> 
<script>
	<%
		int num = 9;
		int pageId = 1;
		InfCakeService cakeService = new ImplCakeService();
		List<Cake> list = cakeService.queryAllCakeByPaging(1, 9);
		int size = cakeService.getAllCake().size();
		int pageNum = size / num + (size % num > 0 ? 1 : 0);
		session.setAttribute("type", "所有蛋糕");
		session.setAttribute("pageNum", pageNum);
	%>
	
	function show(pageId,type) {
		var formData=$("#myform").serialize();
		formData=decodeURIComponent(formData);
		console.log("我来了");
		
		if (pageSize != 0 && pageId >= pageSize) {
			pageId = pageSize;
		} else if (pageId <= 1) {
			pageId = 1;
		}	
		
		console.log("哦豁");
		$.ajax({
			url:"GoodsServlet",
			type:"post",
			data: {"formData":formData,"pageId":pageId,"num":9},
			//contentType: "application/json;charset=utf-8",
			//datatype:"json",
			success:function(data) {
				$("#showGoods").html(data);
			}
		});
		
		
		
	}
	
	
	function navigation(index,type) {
		if (pageSize != 0 && index >= pageSize) {
			index = pageSize;
		} else if (index <= 1) {
			index = 1;
		}
		$.ajax({
			url:"TypeServlet",
			type:"post",
			data: {"c_type":type,"pageId":index},
			success: function(data){
				$("#showGoods").html(data);
				$("#myform")[0].reset();
				<% pageId = 1; %>
			}
		});
	}

	$(document).ready(function() {
		$(".zev").click(function() {
			show(1);
		<% pageId = 1; %>
		});
		
		
		$(".item_add.items").click(function() {
			var id = $(this).parent().children("input").first().val();
			var num = $(this).parent().children("input").first().next().val();
			console.log("欧哦");
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
<style>
<!--
	#mybtn {
    padding: 10px;
    color: 
	#fff;
	font-size: 1em;
	cursor: pointer;
	margin: 32% auto 0 auto;
	display: block;
	border: none;
	width: 60%;
	text-decoration: none;
	letter-spacing: 1px;
	font-weight: initial;
	background:
    rgba(25, 23, 23, 0.4);
    transition: 0.5s all;
    -webkit-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -o-transition: 0.5s all;
    -ms-transition: 0.5s all;
}
-->
</style>
</head>


<body class="demo-1">
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
                    <button class="navbar-toggle toggle-cake show-menu"><span class="sr-only">Toggle Navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand navbar-cake" href="#"><img alt="Logo-White" src="static/Zev/assets/images/logo-100.png"></a>
                  </div>
                  <nav>
                    <ul class="header-nav hidden-xs">
                      <li>
                        <a href="index.jsp"><font size="+1">首页</font></a>
                      </li>
                      <li>
                        <a href="shop.jsp"><font size="+1">购物中心</font></a>
                      </li>
                      <li class="pad-top-0i">
                        <img alt="Logo-White" src="static/Zev/assets/images/logo-150.png">
                      </li>
                      
                      
                      
                      <li>
							<span class="btn-list-group">
                        <% 
	                       User  u=(User)session.getAttribute("userInfo");
	                        if(user!=null){
	                 %> 
							<a class="btn"> <font size="+1">账户</font></a>
                            <span class="btn-list-area"> 
                            <a href="Zev/cart.jsp" id="message" class="btn">
                             <font size="+1">购物车</font></a><br> <a
							href="#" id="car" class="btn"><font size="+1">个人资料</font></a>
							<a href="Zev/sell.jsp" id="shoping" class="btn"><font size="+1">订单中心</font></a>
							<a href="javascript:window.localtion.href='ExitServlet'" id="exit" class="btn"><font size="+1">退出</font></a>
							</span> 
                     	<%
                             } else {
                         %>   	 
                             <a href="login.html"> <font size="+1">账户</font></a>
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
               
                <h2  style="font-size: 30px;font-family: 'moon_flower_boldregular';color: inherit;">
                	购物中心
                </h2>
<!--                 <h2> -->
<!--                   Cake -->
<!--                 </h2> -->
              </div>
            </div>
          </header>
          <div class="purple-arrow">
            &nbsp;
          </div>
        </section>
        <!-- End Header Cake -->
        
        
        
        
        
        
        
        
        <%
        size = cakeService.getAllCake().size();
		pageNum = size / num + (size % num > 0 ? 1 : 0);
		session.setAttribute("type", "所有蛋糕");
		session.setAttribute("pageNum", pageNum);        
        %>
        
		<!--products-->
		<!-- 
			蛋糕产品
		 -->
	<div class="products">	 
		<form method="post" id="myform">
		<div class="container">			
			<div class="col-md-9 product-model-sec" id="showGoods">
				<c:forEach var="cake" items="<%=list %>">
					<div class="product-grid">
					
 					<a href="single.jsp?c_id=${cake.c_id }">				 
						<div class="more-product"><span> </span></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
							<img src="${cake.c_image }" class="img-responsive" alt="">
							<div class="b-wrapper">
								<h4 class="b-animate b-from-left  b-delay03">	
									<input type="button" id="mybtn" value="查看">
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
				
				<div class="col-md-9" id="paging" style="float:right">
					<div class="demo" style="text-align:center">
					  <ul class="pagination pagination_type1">
					    <li class="pagination__item"><a href="javascript:navigation(<%=pageId-1 %>,'所有蛋糕')" class="pagination__number"><span class="pagination__control pagination__control_prev">上一页</span></a></li>
					    
					    <c:forEach var="i" begin="1" end="<%=pageNum %>">
					    	<li class="pagination__item"><a href="javascript:navigation(${i },'所有蛋糕')">${i }</a></li>
					    </c:forEach>
					    
					    <li class="pagination__item"><a href="javascript:navigation(<%=pageId+1 %>,'所有蛋糕')"><span class="pagination__control pagination__control_next">下一页</span></a></li>
					  </ul>
					</div>
				</div>
			</div>	
			
			
			
			<!-- 左边的蛋糕品种挑选的导航 -->
			<div class="col-md-3 rsidebar span_1_of_left">
				<section  class="sky-form">
					<div class="product_right">
						<h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>分类目录</h4>
						
						<div class="tab0">
							<ul class="place">								
								<li class="sort" onclick="navigation(1,'所有蛋糕')">所有蛋糕</li>										
							</ul>
							<div class="clearfix"> </div>
					    </div>	
						
						<div class="tab1">
							<ul class="place">								
								<li class="sort">常规蛋糕</li>		
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>								
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">						
								<a href="javascript:navigation(1,'卡萨塔')"><p>卡萨塔</p></a>
								<a href="javascript:navigation(1,'乳酪蛋糕')"><p>乳酪蛋糕</p></a>
								<a href="javascript:navigation(1,'椰子蛋糕')"><p>椰子蛋糕</p></a>
								<a href="javascript:navigation(1,'纸杯蛋糕')"><p>纸杯蛋糕</p></a>
						    </div>
					    </div>						  
						<div class="tab2">
							<ul class="place">								
								<li class="sort">特制蛋糕</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">						
								<a href="javascript:navigation(1,'美味蛋糕')"><p>美味蛋糕</p></a>
								<a href="javascript:navigation(1,'姜味饼干')"><p>姜味饼干</p></a>									
						    </div>
					    </div>
						<div class="tab3">
							<ul class="place">								
								<li class="sort">无蛋蛋糕</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">						
								<a href="javascript:navigation(1,'牛奶蛋糕')"><p>牛奶蛋糕</p></a>
								<a href="javascript:navigation(1,'水果蛋糕')"><p>水果蛋糕</p></a>
						    </div>
					    </div>
						<div class="tab4">
							<ul class="place">								
								<li class="sort">2-3层蛋糕</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">				
								<a href="javascript:navigation(1,'花层蛋糕')"><p>花层蛋糕</p></a>
								<a href="javascript:navigation(1,'二层心型')"><p>二层心型</p></a>
						    </div>
					    </div>
						<!--script-->
						<script>
							$(document).ready(function(){
								$(".tab1 .single-bottom").hide();
								$(".tab2 .single-bottom").hide();
								$(".tab3 .single-bottom").hide();
								$(".tab4 .single-bottom").hide();
								$(".tab5 .single-bottom").hide();
								
								$(".tab1 ul").click(function(){
									$(".tab1 .single-bottom").slideToggle(300);
									$(".tab2 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab2 ul").click(function(){
									$(".tab2 .single-bottom").slideToggle(300);
									$(".tab1 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab3 ul").click(function(){
									$(".tab3 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab4 ul").click(function(){
									$(".tab4 .single-bottom").slideToggle(300);
									$(".tab5 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})	
								$(".tab5 ul").click(function(){
									$(".tab5 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})	
							});
						</script>
						<!--//script -->	
					</div>
				</section> 	
				<section class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>口味</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4 ">
							<label ><input type="checkbox" class="zev" name="c_taste:巧克力" />巧克力</label><br>
							<label><input type="checkbox" class="zev" name="c_taste:香草" />香草</label><br>
							<label><input type="checkbox" class="zev" name="c_taste:草莓">草莓</label><br>
							<label><input type="checkbox" class="zev" name="c_taste:混合水果">混合水果</label><br>
							<label><input type="checkbox" class="zev" name="c_taste:蜂蜜">蜂蜜</label>
							<!-- 
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>巧克力</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>香草</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>草莓</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>混合水果</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>蜂蜜</label>
							 -->
						</div>
					</div>
				</section>
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>重量</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
						</div>		
						<div class="col col-4">
							<label><input type="checkbox" class="zev" name="c_weight:0.5">0.5 KG</label><br>
							<label><input type="checkbox" class="zev" name="c_weight:1">1 KG</label><br>
							<label><input type="checkbox" class="zev" name="c_weight:2">2 KG</label><br>
							<label><input type="checkbox" class="zev" name="c_weight:3">3 KG</label><br>
							<!-- 
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>0.5 KG</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>1 KG</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>2 KG</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>更多</label>
							 -->
						</div>
					</div>
				</section>	
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>颜色</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label><input type="checkbox" class="zev" name="c_color:白色">白色</label><br>
							<label><input type="checkbox" class="zev" name="c_color:黑色">黑色</label><br>
							<label><input type="checkbox" class="zev" name="c_color:粉色"">粉色</label><br>
							<label><input type="checkbox" class="zev" name="c_color:棕色"">棕色</label><br>
						</div>
						<div class="col col-4">
							<!-- 
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>白色</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>黑色</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>粉色</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>棕色</label>
							 -->
						</div>
					</div>
				</section>
			</div>
		</div>
		</form>
	</div>
	<!--//products-->
		
		
		
		
        <!-- End More Cake -->
        <div class="pad-top-150"></div>
        
        
        <!-- Start Footer Cake -->
				<footer>
					<div class="triangle-no-animate">&nbsp;</div>
					<div class="container">
						<div class="abs-logo-footer">
							<img alt="Logo-Cake" src="static/Zev/assets/images/logo.png">
						</div>
						<div class="top-footer">
							<div class="row">
								<div class="col-sm-6">
									<img alt="Logo-White" class="img-cake-center-res mar-btm-20"
										src="static/Zev/assets/images/logo-white.png">
								</div>
								<div class="col-sm-6 text-right">
									<ul class="sosmed-cake">
										<li>
											<div class="center-sosmed">
												<p class="icon icon-facebook">&nbsp;</p>
											</div>
										</li>
										<li>
											<div class="center-sosmed">
												<p class="icon icon-twitter">&nbsp;</p>
											</div>
										</li>
										<li>
											<div class="center-sosmed">
												<p class="icon icon-behance">&nbsp;</p>
											</div>
										</li>
										<li>
											<div class="center-sosmed">
												<p class="icon icon-dribbble">&nbsp;</p>
											</div>
										</li>
										<li>
											<div class="center-sosmed">
												<p class="icon icon-pinterest">&nbsp;</p>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="line-top-white mar-btm-20 mar-top-20">&nbsp;</div>
						<div class="content-about-footer">
							<!-- Column -->
							<div class="col-sm-4">
								<h4>蛋糕的梦</h4>
								<p class="mar-btm-20">
									一家为梦想而生的纸杯蛋糕店 <br>绵忆无穷
								</p>
								<p class="mar-btm-20">
									门面地址： <br>湖南省长沙市岳麓区银盆岭<br>
								</p>
								<p class="mar-btm-20">
									预订电话 : <strong>085 327787266</strong>
								</p>
							</div>
							<!-- Column -->
							<div class="col-sm-4 hidden-xs">
								<ul class="list-picture-footer">
									<li><a class="fancybox"
										data-fancybox-group="contentgallery"
										href="static/Zev/assets/images/tag-1.jpg"><img
											alt="Img-sm-picture" class="img-100"
											src="static/Zev/assets/images/tag-1.jpg"></a></li>
									<li><a class="fancybox"
										data-fancybox-group="contentgallery"
										href="static/Zev/assets/images/tag-2.jpg"><img
											alt="Img-sm-picture" class="img-100"
											src="static/Zev/assets/images/tag-2.jpg"></a></li>
									<li><a class="fancybox"
										data-fancybox-group="contentgallery"
										href="static/Zev/assets/images/tag-3.jpg"><img
											alt="Img-sm-picture" class="img-100"
											src="static/Zev/assets/images/tag-3.jpg"></a></li>
									<li><a class="fancybox"
										data-fancybox-group="contentgallery"
										href="static/Zev/assets/images/tag-4.jpg"><img
											alt="Img-sm-picture" class="img-100"
											src="static/Zev/assets/images/tag-4.jpg"></a></li>
									<li><a class="fancybox"
										data-fancybox-group="contentgallery"
										href="static/Zev/assets/images/tag-5.jpg"><img
											alt="Img-sm-picture" class="img-100"
											src="static/Zev/assets/images/tag-5.jpg"></a></li>
									<li><a class="fancybox"
										data-fancybox-group="contentgallery"
										href="static/Zev/assets/images/tag-6.jpg"><img
											alt="Img-sm-picture" class="img-100"
											src="static/Zev/assets/images/tag-6.jpg"></a></li>
									<li><a class="fancybox"
										data-fancybox-group="contentgallery"
										href="static/Zev/assets/images/tag-7.jpg"><img
											alt="Img-sm-picture" class="img-100"
											src="static/Zev/assets/images/tag-7.jpg"></a></li>
									<li><a class="fancybox"
										data-fancybox-group="contentgallery"
										href="static/Zev/assets/images/tag-8.jpg"><img
											alt="Img-sm-picture" class="img-100"
											src="static/Zev/assets/images/tag-8.jpg"></a></li>
								</ul>
								<div class="clear"></div>
							</div>
							<!-- Column -->
							<div class="col-sm-4">
								<ul class="list-link-home">
									<li><a href="index.jsp">首页</a></li>
									<li><a href="shop.jsp">购物中心</a></li>
									<li><a href="#">账户</a></li>
									<li><a href="feedback.jsp">反馈</a></li>
								</ul>
							</div>
						</div>
						<div class="logo-dn">
							<img alt="Delip Nugraha" src="static/Zev/assets/images/dn.png">
						</div>
					</div>
				</footer>
				<!-- End Option Cake -->
				
				
      </div>
    </div>
    <script src="static/Zev/assets/javascripts/jquery.js"></script>
    <script src="static/Zev/assets/javascripts/fancybox/jquery.fancybox.pack.js"></script>
    <script src="static/Zev/assets/javascripts/slick.js"></script>
    <script src="static/Zev/assets/javascripts/wow/wow.js"></script>
    <script src="static/Zev/assets/javascripts/custom.js"></script>
    <script src="static/Zev/assets/javascripts/bootstrap.js"></script>
    <script src="static/Zev/assets/javascripts/classie.js"></script>
    <script src="static/Zev/assets/javascripts/pathLoader.js"></script>
    <script src="static/Zev/assets/javascripts/main.js"></script>
    <script type="text/javascript" src="static/Zev/assets/layer/2.4/layer.js"></script> 
    <script type="text/javascript">
      new WOW().init();
    </script>
	<script type="text/javascript" id="sourcecode">

		var pageSize = <%= pageNum %>;
		$(function()
		{
			$('.scroll-pane').jScrollPane();
		});
		
	</script>
  </body>
</html>

