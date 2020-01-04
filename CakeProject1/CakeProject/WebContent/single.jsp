<%@page import="com.bean.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.service.impl.ImplCarService"%>
<%@page import="com.service.InfCarService"%>
<%@page import="java.util.List"%>
<%@page import="com.bean.Cake"%>
<%@page import="com.service.impl.ImplCakeService"%>
<%@page import="com.service.InfCakeService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <meta content="Metronic Shop UI description" name="description">
  <meta content="Metronic Shop UI keywords" name="keywords">
  <meta content="keenthemes" name="author">

  <meta property="og:site_name" content="-CUSTOMER VALUE-">
  <meta property="og:title" content="-CUSTOMER VALUE-">
  <meta property="og:description" content="-CUSTOMER VALUE-">
  <meta property="og:type" content="website">
  <meta property="og:image" content="-CUSTOMER VALUE-"><!-- link to image for socio -->
  <meta property="og:url" content="-CUSTOMER VALUE-">

  <link rel="shortcut icon" href="favicon.ico">

  <!-- Fonts START -->
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"> 
  <!-- Fonts END -->

  <!-- Global styles START -->          
  <link href="static/Zev/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="static/Zev/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Global styles END --> 
   
  <!-- Page level plugin styles START -->
  <link href="static/Zev/assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <link href="static/Zev/assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
  <link href="static/Zev/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
  <link href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"><!-- for slider-range -->
  <link href="static/Zev/assets/plugins/rateit/src/rateit.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin styles END -->

  <!-- Theme styles START -->
  <link href="static/Zev/assets/pages/css/components.css" rel="stylesheet">
  <link href="static/Zev/assets/corporate/css/style.css" rel="stylesheet">
  <link href="static/Zev/assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
  <link href="static/Zev/assets/corporate/css/style-responsive.css" rel="stylesheet">
  <link href="static/Zev/assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
  <link href="static/Zev/assets/corporate/css/custom.css" rel="stylesheet">
  <!-- Theme styles END -->		
	
	
	
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
	

	<link rel="stylesheet" href="static/Zev/assets/layer/2.4/skin/layer.css">
	
	<script>
		function add(c_id, d) {
			var c_id = c_id;
			var num = parseInt($(d).parent().find("input").first().val());
			
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
				url:"UpdateCartServlet",
				type:"post",
				data: {"id":c_id,"num":num},
				success: function(data){
					layer.msg('添加成功',{icon:1})
				}
			});
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
                            <a href="Zev/cart.jsp" id="message" class="mybtn">
                             <font size="+1">购物车</font></a><br> <a
							href="#" id="car" class="mybtn"><font size="+1">个人资料</font></a>
							<a href="Zev/sell.jsp" id="shoping" class="mybtn"><font size="+1">订单中心</font></a>
							<a href="ExitServlet" id="exit" class="btn"><font size="+1">退出</font></a>
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
               
                <h2 style="font-size: 80px;font-family: 'moon_flower_boldregular';color: inherit;">
                  single
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
    		int num = 5;
	    	int c_id = Integer.parseInt(request.getParameter("c_id"));
		  	//int c_id = 1;
	    	InfCakeService cakeService = new ImplCakeService();
	    	Cake c = cakeService.selectCakeById(c_id);
	    	
	    	InfCarService carService = new ImplCarService();
	    	List<Integer> list = carService.selectCarTop(num);
	    	
	    	List<Cake> topList = new ArrayList<Cake>();
	    	if (list.size() >= num) {
	    		for(int i = 0; i < list.size(); i++) {
		    		topList.add(cakeService.selectCakeById(list.get(i)));
		    	}
	    	} else {
	    		for(Cake cake : cakeService.getAllCake()) {
	    			topList.add(cake);
	    			if (topList.size() == num) {
	    				break;
	    			}
	    		}
	    	}
	    	
    	%>
		<div class="main">
      <div class="container">
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
		<!-- BEGIN SIDEBAR -->
          <div class="sidebar col-md-3 col-sm-5">
				
            <div class="sidebar-products clearfix">
              <h2>大家都喜欢</h2>
              	<c:forEach var="l" items="<%=topList %>">
	              <div class="item">
	                <a href="single.jsp?c_id=${l.c_id }"><img src="${l.c_image }" alt="该图片已被删除"></a>
	                <h3><a href="single.jsp?c_id=${l.c_id }">${l.c_name }</a></h3>
	                <div class="price">¥${l.c_price }</div>
	              </div>
              </c:forEach>
              
              
            </div>
          </div>
          <!-- END SIDEBAR -->
          
          
          
          <!-- BEGIN CONTENT -->
          <div class="col-md-9 col-sm-7">
            <div class="product-page">
              <div class="row">
                <div class="col-md-6 col-sm-6">
                  <div class="product-main-image">
<%--                     <img src="<%=c.getC_image() %>" alt="Cool green dress with red bell" class="img-responsive" data-BigImgsrc="assets/pages/img/products/model7.jpg"> --%>
                  	<div class="flexslider">
						<ul class="slides">
							<li data-thumb="images/s1.png">
								<div class="thumb-image"> <img src="<%=c.getC_image() %>" data-imagezoom="true" class="img-responsive"> </div>
							</li>
						</ul>
					</div>
                  </div>
                </div>
                <div class="col-md-6 col-sm-6">
                  <h3><%=c.getC_name() %></h3>
                  <div class="price-availability-block clearfix">
                    <div class="price">
                      <strong><span>¥</span><%=c.getC_price() %></strong>
                    </div>
                  </div>
                  <div class="description">
                    <p><%=c.getC_introduce() %></p>
                  </div>
                  <div class="product-page-options">
                    <div class="pull-left">
                      <label class="control-label">重量:&nbsp;<%=c.getC_weight() %>KG</label>
                    </div>
                    <div class="pull-left">
                      <label class="control-label">口味:&nbsp;<%=c.getC_taste() %></label>
                    </div>
                  </div>
                  <div class="product-page-cart">
                  	<p class="qty" style="float:left">数量:&nbsp;</p>
                    <div class="product-quantity">
						<input min="1" type="number" id="quantity" name="quantity" value="1" class="form-control input-small" style="background:#FFFFFF">
                    </div>
					<button class="btn btn-primary" type="submit" onClick="add(<%=c.getC_id() %>,this)">添加购物车</button>
                  </div>
                  <div class="review">
                    <input type="range" value="4" step="0.25" id="backing4">
                    <div class="rateit" data-rateit-backingfld="#backing4" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5">
                    </div>
<!--                     <a href="javascript:;">7 reviews</a>&nbsp;&nbsp; -->
                  </div>
                </div>

                <div class="product-page-content">
                  <ul id="myTab" class="nav nav-tabs">
                    <li class="active"><a href="#Description" data-toggle="tab">蛋糕描述</a></li>
                    <li><a href="#Information" data-toggle="tab">基本信息</a></li>
<!--                     <li class="active"><a href="#Reviews" data-toggle="tab">评论</a></li> -->
                  </ul>
                  <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade in active" id="Description">
                      <p><%=c.getC_description() %></p>
                    </div>
                    <div class="tab-pane fade" id="Information">
                      <table class="datasheet">
                        <tr>
                          <td class="datasheet-features-type">名称</td>
                          <td><%=c.getC_name() %></td>
                        </tr>
                        <tr>
                          <td class="datasheet-features-type">类别</td>
                          <td><%=c.getC_type() %></td>
                        </tr>
                        <tr>
                          <td class="datasheet-features-type">重量</td>
                          <td><%=c.getC_weight() %>KG</td>
                        </tr>
                        <tr>
                          <td class="datasheet-features-type">口味</td>
                          <td><%=c.getC_taste() %></td>
                        </tr>
                        <tr>
                          <td class="datasheet-features-type">颜色</td>
                          <td><%=c.getC_color() %></td>
                        </tr>
                      </table>
                    </div>
<!--                     <div class="tab-pane fade in active" id="Reviews"> -->
<!--                       <p>There are no reviews for this product.</p> -->
<!--                       <div class="review-item clearfix"> -->
<!--                         <div class="review-item-submitted"> -->
<!--                           <strong>Bob</strong> -->
<!--                           <em>30/12/2013 - 07:37</em> -->
<!--                           <div class="rateit" data-rateit-value="5" data-rateit-ispreset="true" data-rateit-readonly="true"></div> -->
<!--                         </div>                                               -->
<!--                         <div class="review-item-content"> -->
<!--                             <p>Sed velit quam, auctor id semper a, hendrerit eget justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis vel arcu pulvinar dolor tempus feugiat id in orci. Phasellus sed erat leo. Donec luctus, justo eget ultricies tristique, enim mauris bibendum orci, a sodales lectus purus ut lorem.</p> -->
<!--                         </div> -->
<!--                       </div> -->
<!--                       <div class="review-item clearfix"> -->
<!--                         <div class="review-item-submitted"> -->
<!--                           <strong>Mary</strong> -->
<!--                           <em>13/12/2013 - 17:49</em> -->
<!--                           <div class="rateit" data-rateit-value="2.5" data-rateit-ispreset="true" data-rateit-readonly="true"></div> -->
<!--                         </div>                                               -->
<!--                         <div class="review-item-content"> -->
<!--                             <p>Sed velit quam, auctor id semper a, hendrerit eget justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis vel arcu pulvinar dolor tempus feugiat id in orci. Phasellus sed erat leo. Donec luctus, justo eget ultricies tristique, enim mauris bibendum orci, a sodales lectus purus ut lorem.</p> -->
<!--                         </div> -->
<!--                       </div> -->

<!--                     </div> -->
                  </div>
                </div>

                <div class="sticker sticker-sale"></div>
              </div>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>
    </div>    
    
    
    
    
    
    
    
    
    <!-- End More Cake -->
        <div class="pad-top-150"></div>
        <!-- Start Footer Cake -->
        <footer>
          <div class="triangle-no-animate">
            &nbsp;
          </div>
          <div class="container">
            <div class="abs-logo-footer">
              <img alt="Logo-Cake" src="static/Zev/assets/images/logo-150.png">
            </div>
            <div class="top-footer">
              <div class="row">
                <div class="col-sm-6">
                  <img alt="Logo-White" class="img-cake-center-res mar-btm-20" src="static/Zev/assets/images/logo-white.png">
                </div>
                <div class="col-sm-6 text-right">
                  <ul class="sosmed-cake">
                    <li>
                      <div class="center-sosmed">
                        <p class="icon icon-facebook">
                          &nbsp;
                        </p>
                      </div>
                    </li>
                    <li>
                      <div class="center-sosmed">
                        <p class="icon icon-twitter">
                          &nbsp;
                        </p>
                      </div>
                    </li>
                    <li>
                      <div class="center-sosmed">
                        <p class="icon icon-behance">
                          &nbsp;
                        </p>
                      </div>
                    </li>
                    <li>
                      <div class="center-sosmed">
                        <p class="icon icon-dribbble">
                          &nbsp;
                        </p>
                      </div>
                    </li>
                    <li>
                      <div class="center-sosmed">
                        <p class="icon icon-pinterest">
                          &nbsp;
                        </p>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="line-top-white mar-btm-20 mar-top-20">
              &nbsp;
            </div>
			
            <div class="content-about-footer">
              <!-- Column -->
              <div class="col-sm-4">
                <h4>
                  Cake's Dream
                </h4>
                <p class="mar-btm-20">
                  Cookie apple pie donut gingerbread <br>sweet roll pudding topping <br>marshmallow.<br>
                </p>
                <p class="mar-btm-20">
                  Jl Kalidam RT 05 RW 10 <br>Cimahi Selatan, Indonesia<br>
                </p>
                <p class="mar-btm-20">
                  Telp : <strong>085 327787266</strong>
                </p>
              </div>
              <!-- Column -->
              <div class="col-sm-4 hidden-xs">
                <ul class="list-picture-footer">
                  <li>
                    <a class="fancybox" data-fancybox-group="contentgallery" href="assets/images/tag-1.jpg"><img alt="Img-sm-picture" class="img-100" src="static/Zev/assets/images/tag-1.jpg"></a>
                  </li>
                  <li>
                    <a class="fancybox" data-fancybox-group="contentgallery" href="assets/images/tag-2.jpg"><img alt="Img-sm-picture" class="img-100" src="static/Zev/assets/images/tag-2.jpg"></a>
                  </li>
                  <li>
                    <a class="fancybox" data-fancybox-group="contentgallery" href="assets/images/tag-3.jpg"><img alt="Img-sm-picture" class="img-100" src="static/Zev/assets/images/tag-3.jpg"></a>
                  </li>
                  <li>
                    <a class="fancybox" data-fancybox-group="contentgallery" href="assets/images/tag-4.jpg"><img alt="Img-sm-picture" class="img-100" src="static/Zev/assets/images/tag-4.jpg"></a>
                  </li>
                  <li>
                    <a class="fancybox" data-fancybox-group="contentgallery" href="assets/images/tag-5.jpg"><img alt="Img-sm-picture" class="img-100" src="static/Zev/assets/images/tag-5.jpg"></a>
                  </li>
                  <li>
                    <a class="fancybox" data-fancybox-group="contentgallery" href="assets/images/tag-6.jpg"><img alt="Img-sm-picture" class="img-100" src="static/Zev/assets/images/tag-6.jpg"></a>
                  </li>
                  <li>
                    <a class="fancybox" data-fancybox-group="contentgallery" href="assets/images/tag-7.jpg"><img alt="Img-sm-picture" class="img-100" src="static/Zev/assets/images/tag-7.jpg"></a>
                  </li>
                  <li>
                    <a class="fancybox" data-fancybox-group="contentgallery" href="assets/images/tag-8.jpg"><img alt="Img-sm-picture" class="img-100" src="static/Zev/assets/images/tag-8.jpg"></a>
                  </li>
                </ul>
                <div class="clear"></div>
                <p>
                  Cookie apple pie donut gingerbread <br>sweet roll pudding topping
                </p>
              </div>
              <!-- Column -->
              <div class="col-sm-4">
                <ul class="list-link-home">
                  <li>
                    <a href="shop.jsp">Shop</a>
                  </li>
                  <li>
                    <a href="#">Gallery</a>
                  </li>
                  <li>
                    <a href="#">Privacy Policy</a>
                  </li>
                  <li>
                    <a href="#">Terms Of Use</a>
                  </li>
                  <li>
                    <a href="blog-center.html">Blog</a>
                  </li>
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
    <script type="text/javascript">
      new WOW().init();
    </script>
	<script type="text/javascript" id="sourcecode">
		$(function()
		{
			$('.scroll-pane').jScrollPane();
		});
	</script>
	
	
	 <!-- Load javascripts at bottom, this will reduce page load time -->
    <!-- BEGIN CORE PLUGINS(REQUIRED FOR ALL PAGES) -->
    <!--[if lt IE 9]>
    <script src="assets/plugins/respond.min.js"></script>  
    <![endif]-->  
    <script src="static/Zev/assets/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="static/Zev/assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="static/Zev/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>      
    <script src="static/Zev/assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>
    <script src="static/Zev/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->

    <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
    <script src="static/Zev/assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
    <script src="static/Zev/assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
    <script src='static/Zev/assets/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
    <script src="static/Zev/assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->
    <script src="static/Zev/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
    <script src="static/Zev/assets/plugins/rateit/src/jquery.rateit.js" type="text/javascript"></script>

    <script src="static/Zev/assets/corporate/scripts/layout.js" type="text/javascript"></script>
    <script type="text/javascript" src="static/Zev/assets/layer/2.4/layer.js"></script> 
    
    <script type="text/javascript" src="static/Zev/assets/layer/2.4/layer.js"></script> 
    <script type="text/javascript">
    
    	
    
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            Layout.initTwitter();
            Layout.initImageZoom();
            Layout.initTouchspin();
            Layout.initUniform();
        });
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
</html>