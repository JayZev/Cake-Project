<%@page import="com.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Cake&#39;s Dream is Beautiful Template "
	name="description">
<meta content="" name="author">
<link href="static/Zev/assets/images/favicon-32x32.png"
	rel="shortcut icon">
<title>Home</title>
<link href="static/Zev/assets/stylesheets/css/bootstrap.css"
	rel="stylesheet">
<link href="static/Zev/assets/stylesheets/css/font-family.css"
	rel="stylesheet">
<link href="static/Zev/assets/stylesheets/css/responsive.css"
	rel="stylesheet">
<link href="static/Zev/assets/stylesheets/css/slick.css"
	rel="stylesheet">
<link href="static/Zev/assets/stylesheets/css/slick-theme.css"
	rel="stylesheet">
<link href="static/Zev/assets/stylesheets/css/style.css"
	rel="stylesheet">
<link href="static/Zev/assets/stylesheets/css/animate.css"
	rel="stylesheet">
<link href="static/Zev/assets/javascripts/fancybox/jquery.fancybox.css"
	rel="stylesheet" type="text/css">
<link href="static/Zev/assets/stylesheets/css/global.css"
	rel="stylesheet">
<link href="static/Zev/assets/stylesheets/css/effect2.css"
	rel="stylesheet" type="text/css">
<script src="static/Zev/assets/javascripts/modernizr.custom.js"></script>
    <link href="static/Zev/css/feedback.css" type="text/css" rel="stylesheet" media="all"> 
    
    <script>
    	function shop() {
    		window.location.href="shop.jsp";
    	}
    </script>
    
    
</head>

<body class="demo-1">
	<div class="ip-container" id="ip-container">
		<!--initial header-->
		<header class="ip-header">
			<div class="ip-loader">
				<svg class="ip-inner" height="60px" viewbox="0 0 80 80" width="60px">
					<path class="ip-loader-circlebg"
						d="M40,10C57.351,10,71,23.649,71,40.5S57.351,71,40.5,71 S10,57.351,10,40.5S23.649,10,40.5,10z"></path>
					<path class="ip-loader-circle"
						d="M40,10C57.351,10,71,23.649,71,40.5S57.351,71,40.5,71 S10,57.351,10,40.5S23.649,10,40.5,10z"
						id="ip-loader-circle"></path></svg>
			</div>
		</header>
		<!--main content-->
		<div class="ip-main">
			<div class="top-highlight hide">&nbsp;</div>
			<!-- Start Header Cake -->
			<section class="header-wrapper">
				<header class="wrap-header">
					<div class="top-absolute">
						<div class="top-header">
							<div class="container">
								<div class="navbar-header visible-xs">
									<button class="navbar-toggle toggle-cake show-menu">
										<span class="sr-only">Toggle Navigation</span><span
											class="icon-bar"></span><span class="icon-bar"></span><span
											class="icon-bar"></span>
									</button>
									<a class="navbar-brand navbar-cake" href="#"><img
										alt="Logo-Cupcakes" src="assets/images/logo-100.png"></a>
								</div>
								<nav>
									<ul class="header-nav hidden-xs">
										<li>
										<span class="btn-list-group">
										<a href="index.jsp"> <font size="+1">首页</a></li>
										</span>
										<li>
										<span class="btn-list-group">
										<a href="shop.jsp"> <font size="+1">购物中心</a>
										</span>
										</li>
										<li class="pad-top-0i"><img alt="Logo-Cupcakes"
											src="static/Zev/assets/images/logo-150.png"></li>
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
													href="Zev/personal.jsp" id="car" class="btn"><font size="+1">个人资料</font></a>
													<a href="Zev/sell.jsp" id="shoping" class="btn"><font size="+1">订单中心</font></a>
													<a href="javascript:window.localtion.href='ExitServlet'" id="exit" class="btn"><font size="+1">退出</font></a>
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
										<span class="btn-list-group">
										     <a class="btn" href="feedback.jsp"> <font size="+1">反馈</font></a>
										     </span>
										</li>
									</ul>
								</nav>
								<!-- Start Mega Menu Cake -->
								<div class="mega-menu hide">
									<div class="tittle-mega">
										<h4>- Mega Menu -</h4>
									</div>
									<div class="container">
										<div class="row">
											<div class="col-sm-4">
												<ul class="list-mega">
													<li class="bottom-red-border">Blog</li>
													<li><a href="static/Zev/blog.html">Blog Left
															Content</a></li>
													<li><a href="#">Blog Right Content</a></li>
													<li><a href="static/Zev/blog-center.html">Blog
															Center</a></li>
												</ul>
											</div>
											<div class="col-sm-4">
												<ul class="list-mega">
													<li class="bottom-red-border">Gallery</li>
													<li><a href="#">Gallery 3 Column</a></li>
													<li><a href="#">Gallery 4 Column</a></li>
													<li><a href="#">Gallery With Text</a></li>
												</ul>
											</div>
											<div class="col-sm-4">
												<ul class="list-mega">
													<li class="bottom-red-border">OTHER PAGEs</li>
													<li><a href="#">Chart Page</a></li>
													<li><a href="#">Product Details</a></li>
													<li><a href="#">Privacy Policy</a></li>
													<li><a href="#">Terms Of Use</a></li>
													<li><a href="#">404</a></li>
												</ul>
											</div>
										</div>
										<div class="div text-center">
											<button class="btn btn-pink-cake mar-top-20 close-menu">Close
												Themes</button>
										</div>
									</div>
								</div>
								<!-- End Mega Menu Cake -->
							</div>
						</div>
						<div class="triangle">&nbsp;</div>
					</div>
					<div class="tittle-cake text-center pad-top-150">
						<div class="container">
							<h2>美丽</h2>
							<h1>纸杯蛋糕</h1>
						</div>
					</div>
					<div class="slider-cake">
						<div class="container pad-md-100">
							<div class="center">
								<div class="img-relative">
									<img alt="Cake-one" src="static/Zev/assets/images/cake-one.png">
								</div>
								<div>
									<img alt="Cake-Two" src="static/Zev/assets/images/cake-two.png">
								</div>
								<div>
									<img alt="Cake-Three"
										src="static/Zev/assets/images/cake-three.png">
								</div>
								<div>
									<img alt="Cake-Four"
										src="static/Zev/assets/images/cake-four.png">
								</div>
								<div>
									<img alt="Cake-Five"
										src="static/Zev/assets/images/cake-five.png">
								</div>
							</div>
						</div>
					</div>
					<div class="green-table mar-to-top">&nbsp;</div>
					<div class="green-arrow">&nbsp;</div>
				</header>
			</section>
			<!-- End Header Cake -->
			<!-- Start About Cake -->
			<section class="about-cake">
				<div class="container">
					<!-- About Content -->
					<h2 class="hide">&nbsp;</h2>
					<div class="about-content">
						<img alt="Cake-White"
							src="static/Zev/assets/images/cake-white.png">
						<p>
							太妃糖 李子酥 糖甘草蜜 <b>布朗尼</b>&nbsp; 软糖 巧克力 棒松饼 糖果棒。
						</p>
					</div>
				</div>
			</section>
			<!-- End About Cake -->
			<!-- Start Product Cake -->
			<section class="product-cake">
				<div class="container">
					<!-- Product Tittle -->
					<div class="product-tittle">
						<img alt="Cake-Purple"
							src="static/Zev/assets/images/cake-purple.png">
						<h2>产品</h2>
					</div>
					<!-- Product Content -->
					<div class="product-content">
						<div class="row">
							<!-- Column -->
							<div class="col-sm-4">
								<div class="wrap-product">
									<div class="top-product blue-cake">
										<h1 class="normal-heading">$40</h1>
										<p class="mar-top-10 mar-btm-0">圣诞风柠檬蛋糕</p>
										<span>魔法搭配。</span>
									</div>
									<div class="bottom-product bottom-blue">
										<div class="bottom-product-abs blue-dot">
											<div class="button-cake">
												<div class="blue-button-cake">
													<button class="button-d-cake blue-button-cake" onClick="shop()">购买</button>
												</div>
											</div>
										</div>
										<div class="wrap-bottom-cake">
											<p>海绵蛋糕、意式奶油霜、草莓。</p>
											<div class="blue-line"></div>
										</div>
									</div>
								</div>
							</div>
							<!-- Column -->
							<div class="col-sm-4">
								<div class="wrap-product">
									<div class="top-product red-cake">
										<h1 class="normal-heading">$30</h1>
										<p class="mar-top-10 mar-btm-0">麋鹿蛋糕的</p>
										<span>魔法搭配。</span>
									</div>
									<div class="bottom-product bottom-red">
										<div class="bottom-product-abs pink-dot">
											<div class="button-cake">
												<div class="blue-button-cake">
													<button class="button-d-cake pink-button-cake" onClick="shop()">购买</button>
												</div>
											</div>
										</div>
										<div class="wrap-bottom-cake">
											<p>巧克力面包、饼干、彩色糖豆、可可奶油。</p>
											<div class="red-line"></div>
										</div>
									</div>
								</div>
							</div>
							<!-- Column -->
							<div class="col-sm-4">
								<div class="wrap-product">
									<div class="top-product orange-cake">
										<h1 class="normal-heading">$30</h1>
										<p class="mar-top-10 mar-btm-0">圣诞蛋糕的</p>
										<span>魔法搭配。</span>
									</div>
									<div class="bottom-product bottom-orange">
										<div class="bottom-product-abs orange-dot">
											<div class="button-cake">
												<div class="blue-button-cake">
													<button class="button-d-cake orange-button-cake" onClick="shop()">购买</button>
												</div>
											</div>
										</div>
										<div class="wrap-bottom-cake">
											<p>风味奶油、顶部彩色软糖、海绵蛋糕。</p>
											<div class="orange-line"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End Product Cake -->
				<!-- Start News Cake -->
				<section class="news-cake">
					<div class="triangle-no-animate">&nbsp;</div>
					<!-- News Content -->
					<div class="new-cake-content mar-top-20">
						<!-- Tittle News Content -->
						<div class="tittle-cake text-center">
							<div class="container">
								<img alt="Cake-White"
									src="static/Zev/assets/images/cake-white.png">
								<h2>爆款销售</h2>
							</div>
						</div>
						<!-- Content News-->
						<div class="container mar-top-20">
							<div class="row">
								<div class="col-sm-6 no-pad-right">
									<div class="left-news">
										<h1>
											蛋糕<span>婚礼</span>
										</h1>
									</div>
									<div class="right-news">
										<div class="text-table">
											<p>
												<a href="shop.html"><span class="discount">40<span
														class="percent">%</span><br></span><span class="sale">销量产品</span></a>
											</p>
										</div>
										<div class="text-table dot-background">
											<p>
												<img alt="Client" src="static/Zev/assets/images/client.png">
											</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 no-pad-left">
									<div class="top-news-right">
										<div class="left-news-right">
											<div class="text-table">
												<a class="fancybox" data-fancybox-group="contentnews"
													href="static/Zev/assets/images/ice-cream.png">
													<div class="wizz-effect wizz-orange">
														<div class="wrap-info">冰淇淋</div>
													</div>
												</a>
												<p>
													<img alt="Ice Cream" class="img-100"
														src="static/Zev/assets/images/ice-cream.png">
												</p>
											</div>
										</div>
										<div class="right-news-right">
											<div class="text-table">
												<a class="fancybox" data-fancybox-group="contentnews"
													href="static/Zev/assets/images/ice-cream-cake.png">
													<div class="wizz-effect wizz-green">
														<div class="wrap-info">蛋糕的味道</div>
													</div>
												</a>
												<p>
													<img alt="Ice Cream Cake" class="img-100"
														src="static/Zev/assets/images/ice-cream-cake.png">
												</p>
											</div>
										</div>
									</div>
									<div class="bottom-new-right">
										<div class="quote">
											<div>
												<span class="mar-right-10"><img alt="Quote"
													class="Quote" src="static/Zev/assets/images/quote.png">
												</span>
												<p>
													<span class="bold-font-lg">Adam Grilss, </span><span>&nbsp;
														首席执行官 A </span>
												</p>
												<p>这是做纸杯蛋糕非常棒的一家店，色香味俱全，蛋糕样式非常多样，富有创意。</p>
											</div>
											<div>
												<span class="mar-right-10"><img alt="Quote"
													class="Quote" src="static/Zev/assets/images/quote.png"></span>
												<p>
													<span class="bold-font-lg">Natasya, </span><span>&nbsp;
														首席执行官 B </span>
												</p>
												<p>这里的蛋糕会根据不同欢乐的时节更换蛋糕主题，让人感觉很有意思，每个蛋糕都会有它存在的独特意义。</p>
											</div>
											<div>
												<span class="mar-right-10"><img alt="Quote"
													class="Quote" src="static/Zev/assets/images/quote.png"></span>
												<p>
													<span class="bold-font-lg">Melody, </span><span>&nbsp;
														首席执行官 C </span>
												</p>
												<p>是视觉与味觉上的一场盛宴，非常不错。</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End Content News-->
					</div>
					<!-- End News Content-->
				</section>
				<!-- End News Cake -->
				<!-- Start Option Cake -->
				<section class="option">
					<!-- Tittle Option -->
					<div class="green-table pad-top-10 pad-btm-10">
						<div class="container">
							<div class="tittle-cake text-center">
								<img alt="Cake-White"
									src="static/Zev/assets/images/cake-white.png">
								<h2>我们能做什么</h2>
							</div>
						</div>
					</div>
					<div class="green-arrow"></div>
					<!-- Option Content -->
					<div class="option-content">
						<div class="container">
							<!-- Column -->
							<div class="col-sm-4">
								<div class="messes">
									<div class="messes-show"></div>
									<div class="round-wrap green-option"></div>
								</div>
								<h4 class="green-color">量身定制</h4>
								<div class="line-temp line-green-sm">&nbsp;</div>
								<p class="text-center mar-top-10">
									能按照顾客要求提供相关的方案，制作出令顾客满意的蛋糕。</p>
							</div>
							<!-- Column -->
							<div class="col-sm-4">
								<div class="messes">
									<div class="messes-show"></div>
									<div class="round-wrap orange-option"></div>
								</div>
								<h4 class="orange-color">随节应变</h4>
								<div class="line-temp line-orange-sm">&nbsp;</div>
								<p class="text-center mar-top-10">
									根据欢乐节日风俗特点上新蛋糕的款式，实时变更我们蛋糕店的主题。</p>
							</div>
							<!-- Column -->
							<div class="col-sm-4">
								<div class="messes">
									<div class="messes-show"></div>
									<div class="round-wrap blue-option"></div>
								</div>
								<h4 class="blue-color">物美价廉</h4>
								<div class="line-temp line-blue-sm">&nbsp;</div>
								<p class="text-center mar-top-10">
									不管什么价位的蛋糕，都会享受到来自我们一样的用心与努力。不管是美味还是颜值，你都值得拥有。</p>
							</div>
							<!-- Column -->
							<div class="col-sm-4">
								<div class="messes">
									<div class="messes-show"></div>
									<div class="round-wrap pink-option"></div>
								</div>
								<h4 class="pink-color">绿色健康</h4>
								<div class="line-temp line-pink-sm">&nbsp;</div>
								<p class="text-center mar-top-10">
									每一个蛋糕的生产环境一定是经得住标准考察的，每一个蛋糕都制作精良。</p>
							</div>
							<!-- Column -->
							<div class="col-sm-4">
								<div class="messes">
									<div class="messes-show"></div>
									<div class="round-wrap purple-option"></div>
								</div>
								<h4 class="purple-color">送货上门</h4>
								<div class="line-temp line-purple-sm">&nbsp;</div>
								<p class="text-center mar-top-10">蛋糕的梦支持外卖订购，且保证按时送货上门。</p>
							</div>
						</div>
					</div>
				</section>
				<!-- End Pricing Cake -->
				<!-- Start Team Cake -->
				<section class="abouts-cake">
					<div class="tittle-cake text-center">
						<div class="container">
							<img alt="Cake-Pink" src="assets/images/cake-pink.png">
							<h2 class="pink-color">我们的团队</h2>
						</div>
					</div>
					<div class="container mar-top-20">
						<!-- Column -->
						<div class="col-sm-4">
							<div class="img-round-about">
								<img alt="About Team" class="img-100"
									src="static/Zev/assets/images/about-1.png">
							</div>
							<h4>Kimi Candy</h4>
							<div class="line-pink-about">&nbsp;</div>
							<p class="text-center">食材上的监督者，蛋糕上的营养师。</p>
						</div>
						<!-- Column -->
						<div class="col-sm-4">
							<div class="img-round-about">
								<img alt="About Team" class="img-100"
									src="static/Zev/assets/images/about-2.png">
							</div>
							<h4>Will Candy</h4>
							<div class="line-pink-about">&nbsp;</div>
							<p class="text-center">沉迷造型与色彩碰撞的蛋糕设计师。</p>
						</div>
						<!-- Column -->
						<div class="col-sm-4">
							<div class="img-round-about">
								<img alt="About Team" class="img-100"
									src="static/Zev/assets/images/about-3.png">
							</div>
							<h4>Pink Candy</h4>
							<div class="line-pink-about">&nbsp;</div>
							<p class="text-center">万能的烘焙师，能制作出绝味的纸杯蛋糕。</p>
						</div>
					</div>
				</section>
				<!-- End Option Cake -->
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
	<script
		src="static/Zev/assets/javascripts/fancybox/jquery.fancybox.pack.js"></script>
	<script src="static/Zev/assets/javascripts/slick.js"></script>
	<script src="static/Zev/assets/javascripts/wow/wow.js"></script>
	<script src="static/Zev/assets/javascripts/custom.js"></script>
	<script src="static/Zev/assets/javascripts/bootstrap.js"></script>
	<script src="static/Zev/assets/javascripts/classie.js"></script>
	<script src="static/Zev/assets/javascripts/pathLoader.js"></script>
	<script src="static/Zev/assets/javascripts/main.js"></script>
	<script type="text/javascript">
      new WOW().init();
    </script>
</body>
</html>