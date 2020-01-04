<%@page import="com.bean.User"%>
<%@page import="com.dao.InfFeedbackDao"%>
<%@page import="com.dao.impl.ImplFeedbackDao"%>
<%@page import="com.bean.Feedback"%>
<%@page import="com.service.impl.ImplFeedbackService"%>
<%@page import="com.service.InfFeedbackService"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Cake&#39;s Dream is Beautiful Template " name="description">
    <meta content="" name="author">
    <link href="static/Zev/assets/images/favicon-32x32.png" rel="shortcut icon">
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
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<link href="static/Zev/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="static/Zev/css/style.css" type="text/css" rel="stylesheet" media="all"> 
    <link href="static/Zev/css/feedback.css" type="text/css" rel="stylesheet" media="all"> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    
  <!-- Theme styles START -->
  <link href="static/assets/pages/css/components.css" rel="stylesheet">
  <link href="static/assets/corporate/css/style.css" rel="stylesheet">
  <link href="static/assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
  <link href="static/assets/corporate/css/style-responsive.css" rel="stylesheet">
  <link href="static/assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
  <link href="static/assets/corporate/css/custom.css" rel="stylesheet">
  <!-- Theme styles END -->
  
    <link  type="text/css" rel="stylesheet" href="static/Zev/assets/layer/2.4/skin/layer.css">
    
	<script src="static/Zev/js/jquery-1.11.1.min.js"></script> 
	<link href="static/Zev/css/animate.css" rel="stylesheet" type="text/css" media="all">
    <script src="static/Zev/js/wow.min.js"></script>
    
    
	
	
	<script type="text/javascript" src="static/Zev/js/move-top.js"></script>
    <script type="text/javascript" src="static/Zev/js/easing.js"></script>
    <script type="text/javascript" src="static/Zev/js/jquery-1.9.1.js"></script>
  
    <script type="text/javascript">
		$(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
		
    </script>
    <script >
    $(document).ready(function(){
    	$("#btu1").click(function() {
    		console.log("哦豁");
    		$.ajax({
        		type:"POST",
        		url:"FeedbackServlet",
        		data:{"name":$("#username").val(),"email":$("#useremail").val(),
   				"telephone":$("#userphone").val(),"area":$("#usertxt").val()},
   				success:function(rs){
    				layer.msg('添加成功',{icon:1});
    				$("#myfeedbacke")[0].reset();
    			}
    		});
    	});
    	
	});
   
    
    </script>
 

		<script src="static/Zev/assets/javascripts/jquery.js"></script>

    <script src="static/Zev/assets/javascripts/modernizr.custom.js"></script>
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
        <!-- Start Header -->
        <section class="header-wrapper">
          <!-- Start Content Header -->
          <header class="wrap-header blue-top-dot">
            <div class="top-absolute">
              <div class="top-header">
                <div class="container">
                  <div class="navbar-header visible-xs">
                    <button class="navbar-toggle toggle-cake show-menu"><span class="sr-only">Toggle Navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand navbar-cake" href="#"><img alt="Logo-White" src="static/Zev/assets/images/logo-100.png"></a>
                  </div>
                  <nav>
                    <ul class="header-nav hidden-xs">
                      <li>
                        <a href="index.jsp">首页</a>
                      </li>
                      <li>
                        <a href="shop.jsp">购物中心</a>
                      </li>
                      <li class="pad-top-0i">
                        <img alt="Logo-White" src="static/Zev/assets/images/logo-150.png">
                      </li>
                      <li>
                    <% 
	                       User  name=(User)session.getAttribute("userInfo");
	                        if(name!=null){
	                 %> 
							<span class="btn-list-group">
							<a class="btn"> <font size="+1">账户</font></a>
                            <span class="btn-list-area"> 
                            <a href="Zev/cart.jsp" id="message" class="btn">
                             <font size="+1">购物车</font></a><br> <a
							href="#" id="car" class="btn"><font size="+1">个人资料</font></a>
							<a href="Zev/sell.jsp" id="shoping" class="btn"><font size="+1">订单中心</font></a>
							<a href="#" id="exit" class="btn"><font size="+1">退出</font></a>
							</span> 
							</span>
                     <%
                             } else {
                      %>  	
                             <span class="btn-list-group">
              				<a href="login.html"> <font size="+1">账户</a>
              				</span>
                		<%
                              }
                         %>
                      </li>
                      <li>
                        <a href="feedback.jsp"><font size="+1">反馈</a>
                      </li>
                      
                     <!-- BEGIN CART -->
                     <li>
        
                    </ul>
                  </nav>
                  
	

        
                  <!-- Start Mega Menu Cake -->
                  <div class="mega-menu hide">
                    <div class="tittle-mega">
                      <h4>
                        - Mega Menu -
                      </h4>
                    </div>
                    <div class="container">
                      <div class="row">
                        <div class="col-sm-4">
                          <ul class="list-mega">
                            <li class="bottom-red-border">
                              Blog
                            </li>
                            <li>
                              <a href="blog.html">Blog Left Content</a>
                            </li>
                            <li>
                              <a href="#">Blog Right Content</a>
                            </li>
                            <li>
                              <a href="blog-center.html">Blog Center</a>
                            </li>
                          </ul>
                        </div>
                        <div class="col-sm-4">
                          <ul class="list-mega">
                            <li class="bottom-red-border">
                              Gallery
                            </li>
                            <li>
                              <a href="#">Gallery 3 Column</a>
                            </li>
                            <li>
                              <a href="#">Gallery 4 Column</a>
                            </li>
                            <li>
                              <a href="#">Gallery With Text</a>
                            </li>
                          </ul>
                        </div>
                        <div class="col-sm-4">
                          <ul class="list-mega">
                            <li class="bottom-red-border">
                              OTHER PAGE
                            </li>
                            <li>
                              <a href="#">Chart Page</a>
                            </li>
                            <li>
                              <a href="#">Product Details</a>
                            </li>
                            <li>
                              <a href="#">Privacy Policy</a>
                            </li>
                            <li>
                              <a href="#">Terms Of Use</a>
                            </li>
                            <li>
                              <a href="#">404</a>
                            </li>
                          </ul>
                        </div>
                      </div>
                      <div class="div text-center">
                        <button class="btn btn-pink-cake mar-top-20 close-menu">Close Themes</button>
                      </div>
                    </div>
                  </div>
				  
                  <!-- End Mega Menu Cake -->
                </div>
              </div>
              <div class="triangle">
                &nbsp;
              </div>
            </div>
            <div class="tittle-sub-top pad-top-150">
              <div class="container">
                <h1>
                 反馈/
                </h1>
                <h2>
                 中心
                </h2>
              </div>
            </div>
          </header>
          <!-- End Content Header -->
          <div class="blue-arrow">
            &nbsp;
          </div>
		  <!-- Start Blog Content -->
		   <div >
		   	<!-- contact -->
		<div class="contact">
		<div class="container">
			<h4 class="title wow fadeInDown animated" data-wow-delay=".5s">联系我们</h4>
			<h3 class="title1 wow fadeInDown animated" data-wow-delay=".5s">我们的 <span>ESPR</span>ESSO 位置</h3>
			<span class="bg-text"></span>
			<div class="map wow zoomIn animated" data-wow-delay=".5s">
				<iframe src="map.html" allowfullscreen  width="800" height="200"></iframe>
			</div>
			<div class="contact-form">
				<div class="col-md-5 contact-left">
					<div class="address wow fadeInLeft animated" data-wow-delay=".5s">
						<h5>门面地址:</h5>
						<p><i class="glyphicon glyphicon-home"></i> 湖南省长沙市岳麓区银盆岭 </p>
					</div>
					<div class="address address-mdl wow fadeInLeft animated" data-wow-delay=".5s">
						<h5>预订电话:</h5>
						<p><i class="glyphicon glyphicon-earphone"></i> 085 327787266</p>
						<p><i class="glyphicon glyphicon-phone"></i> 185 7037 4934</p>
					</div>
					<div class="address wow fadeInLeft animated" data-wow-delay=".5s">
						<h5>Email:</h5>
						<p><i class="glyphicon glyphicon-envelope"></i> <a href="mailto:info@example.com">2312977192@qq.com</a></p>
					</div>
				</div>
				<div class="col-md-7 contact-right wow fadeInRight animated" data-wow-delay=".5s">
					<h5>反馈信息:</h5>
					<p>如果您对蛋糕有什么不满意的地方，请提出来，我们会加以改正。</p>
					<form id="myfeedbacke">
						姓名：<input type="text" placeholder="" required=""   name="name" id="username"><br>
						<span id="unspan" class="ok">* 用户名格式不正确</span><br>
						email:<input class="email" type="text" placeholder="" required="" name="email"  id="useremail" ><br>
						电话：<input type="text" placeholder="" required="" name="phone"  id="userphone"><br>
						<span id="phspan" class="ok">* 电话格式不正确</span><br>
						评价及建议：<textarea placeholder="输入不大于500字" required="" name="txt" id="usertxt"></textarea>
						<span id="txtspan" class="ok">* 字数超过最大限制</span><br>
						<input class="wow zoomIn animated" data-wow-delay=".5s" type="button" value="提交" id="btu1" >
						
						<input class="wow zoomIn animated" data-wow-delay=".5s" type="reset" value="取消" id="btu2">
					</form>
					<span id="show"></span>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
		   </div>
          <!-- End Blog Content -->
        </section>


        <!-- End Header -->
        <div class="pad-top-150"></div>
      
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
	<script src="static/Zev/js/jquery.nicescroll.js"></script>
	<script src="static/Zev/js/scripts.js"></script>
	<script src="static/Zev/js/bootstrap.js"></script>
	<script type="text/javascript" src="static/Zev/assets/layer/2.4/layer.js"></script>
    <script type="text/javascript">
      new WOW().init();
    </script>
  </body>
</html>

