<%@page import="com.bean.DetailList"%>
<%@page import="com.service.impl.ImplDetailService"%>
<%@page import="com.service.InfDetailService"%>
<%@page import="com.bean.Sell"%>
<%@page import="com.service.impl.ImplSellService"%>
<%@page import="com.service.InfSellService"%>
<%@page import="java.util.Arrays"%>
<%@page import="com.service.impl.ImplCakeService"%>
<%@page import="com.service.InfCakeService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="com.service.impl.ImplUserService"%>
<%@page import="com.service.InfUserService"%>
<%@page import="com.bean.User"%>
<%@page import="com.bean.CartList"%>
<%@page import="com.service.impl.ImplCarService"%>
<%@page import="com.service.InfCarService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js" lang="en">
  <head>
  
  <!-- Fonts START -->
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"> 
  <!-- Fonts END -->
  <link href="../static/Zev/assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
  <link href="../static/Zev/assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
   
<!-- Custom Theme files -->
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Cake&#39;s Dream is Beautiful Template " name="description">
    <meta content="" name="author">
    <link href="../static/Zev/assets/images/favicon-32x32.png" rel="shortcut icon">
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


  <!-- Global styles START -->          
  <link href="../static/Zev/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="../static/Zev/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Global styles END --> 
   
  <!-- Page level plugin styles START -->
  <link href="../static/Zev/assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <link href="../static/Zev/assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
  <link href="../static/Zev/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
  <link href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"><!-- for slider-range -->
  <link href="../static/Zev/assets/plugins/rateit/src/rateit.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin styles END -->

  <!-- Theme styles START -->
  <link href="../static/Zev/assets/pages/css/components.css" rel="stylesheet">
  <link href="../static/Zev/assets/corporate/css/style.css" rel="stylesheet">
  <link href="../static/Zev/assets/corporate/css/style-responsive.css" rel="stylesheet">
  <link href="../static/Zev/assets/corporate/css/custom.css" rel="stylesheet">
  
  
  
 
    
    <script src="../static/Zev/assets/javascripts/jquery.js"></script>
    
    
    <!--引用百度地图API文件-->
	
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=3.0&ak=1iBVUZmvADDzpaI7StGH8Yx4TSiv1sRl"></script>
    
    <script type="text/javascript">
     
    function bus(path) {
    	if (path == "公交") {
    		document.getElementById("myframe").src = "bus.html";
    	} else if (path == "自驾") {
    		document.getElementById("myframe").src = "selfdriving.html";
    	} else if (path == "步行") {
    		document.getElementById("myframe").src = "walk.html";
    	} else {
    		document.getElementById("myframe").src = "riding.html";
    	}
    	
    }
    
    var pre_type = "送货上门";
    function freight(type) {
    	if (type == "上门取货" && pre_type == "送货上门") {
    		$("#freight").css('display','none');
    		pre_type = type;
    		var txt = $(".shopping-total").find("strong").last().html();
    		var moneny = parseFloat(txt.substring(2))-5;
    		$(".shopping-total").find("strong").last().html("¥ "+moneny);
    	} else if (type == "送货上门" && pre_type == "上门取货") {
    		$("#freight").css('display','block');
    		pre_type = type;
    		var txt = $(".shopping-total").find("strong").last().html();
    		var moneny = parseFloat(txt.substring(2))+5;
    		$(".shopping-total").find("strong").last().html("¥ "+moneny);
    	}
    }
    
    
    
    var address = "";
    var name = "";
    var sex = "";
    var phone = "";
    
    </script>
    
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
                    <button class="navbar-toggle toggle-cake show-menu"><span class="sr-only">Toggle Navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand navbar-cake" href="#"><img alt="Logo-White" src="../static/Zev/assets/images/logo-100.png"></a>
                  </div>
                  <nav>
                    <ul class="header-nav hidden-xs">
                      <li>
                        <a href="index.html">Home</a>
                      </li>
                      <li>
                        <a href="shop.html">Shop</a>
                      </li>
                      <li class="pad-top-0i">
                        <img alt="Logo-White" src="../static/Zev/assets/images/logo-150.png">
                      </li>
                      <li>
                        <a class="show-menu" href="javascript:void(0);">Themes</a>
                      </li>
                      <li>
                        <a href="blog-center.html">Blog</a>
                      </li>
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
                Home /
                <h2>
                  Checkout
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

			String s_id = request.getParameter("s_id");
			if (s_id == null || "".equals(s_id)) {
				request.getRequestDispatcher("sell.jsp").forward(request, response);
			}
        	
        
        	String lng = (String)session.getAttribute("lng");
    		String lat = (String)session.getAttribute("lat");
    		if ("".equals(lng) || lng == null) {
    			session.setAttribute("lng", "-1000");
    			session.setAttribute("lat", "-1000");
    		}
    		
    		
    		
			
//         	int u_id = session
			int u_id = 1;
        	
			
			
			if (s_id == null || s_id.equals("")) {
				response.sendRedirect("sell.jsp");
			}
			
			
			InfSellService sellService = new ImplSellService();
			Sell sell = sellService.selectSellBySId(Integer.parseInt(s_id));
        	
			InfDetailService detailService = new ImplDetailService();
			List<DetailList> detailList = detailService.selectDetailBySId(Integer.parseInt(s_id));
        	
        	
			
			int i = 1;
        %>
        
        
        
        <!-- 购物车部分 -->
      <div class="main" >
      <div class="container">
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN CONTENT -->
          <div class="col-md-12 col-sm-12">
            <div class="goods-page">
              <div class="goods-data clearfix">
              
              
              
              
              
              	<div class="product-page-content">
                  <ul id="myTab" class="nav nav-tabs">
                  	<%
                  		if (sell.getS_freight() > 0) {
                  	%>
                  		<li class="active"><a href="#Reviews" data-toggle="tab">送货上门</a></li>
                  	<%		
                  		} else {
                  	%>	
                  		<li class="active"><a href="#Reviews" data-toggle="tab" onclick="freight('上门取货')">上门取货</a></li>
                  	<%		
                  		}
                  	%>
                    	
                  </ul>
                  	<%
                  		if (sell.getS_freight() > 0) {
                  	%>
                  		<div id="myTabContent" class="tab-content">
	                    <div class="tab-pane fade in active" id="Reviews">
	                     <table class="datasheet">
	                        <tr>
	                          <td class="datasheet-features-type">
	                          	<font size="+0.5">地&emsp;&emsp;址：<%=sell.getS_address() %></font>
	                          </td>
	                          <td class="datasheet-features-type"><font size="+0.5">收&nbsp;&nbsp;货&nbsp;&nbsp;人：<%=sell.getS_consignee() %>(<%=sell.getS_sex() %>)</font></td>
	                        </tr>
	                        <tr>
	                          <td class="datasheet-features-type"><font size="+0.5">联系方式：<%=sell.getS_phone() %></font></td>
	                          <td class="datasheet-features-type">
	                          <font size="+0.5">订单编号：<%=sell.getS_id() %></font>
	                          </td>
	                        </tr>
	                        
	                        <tr>
	                          <td class="datasheet-features-type">
	                          	<label style="float:left"><font size="+0.5">预计送达：<%=sell.getS_predict() %></font></label>
	                          </td>
	                          <td class="datasheet-features-type">
	                          <font size="+0.5">下单时间：<%=sell.getS_time() %></font>
	                          
	                          </td>
	                        </tr>
	                      </table>
	                    </div>
                  	<%
                  		} else {
                  	%>	
                  		<div class="myTabContent" id="Reviews">
						<table class="datasheet">
                        <tr>
                          <td class="datasheet-features-type" width=400px">
                          	<iframe src="bus.html" width=400px" height="300px" id="myframe"></iframe> 
                          </td>
                          <td>
							  <table>
                          			<tr>
                          				<td><label><input type="radio" name="path" onclick="bus('公交')" checked>公交路线</label></td>
                          			</tr>
                          			<tr>
                          				<td><label><input type="radio" name="path" onclick="bus('自驾')" >自驾路线</label></td>
                          			</tr>
                          			<tr>
                          				<td><label><input type="radio" name="path" onclick="bus('步行')">步行路线</label></td>
                          			</tr>
                          			<tr>
                          				<td><label><input type="radio" name="path" onclick="bus('骑行')" >骑行路线</label></td>
                          			</tr>
                          			<tr>
                          				<td>
											<label style="float:left"><font size="+0.5">预留电话：<%=sell.getS_phone() %></font></label>
										</td>
                          			</tr>
                          			<tr>
                          				<td>
											<label style="float:left"><font size="+0.5">预计自取时间：<%=sell.getS_predict() %></font></label>
										</td>
                          			</tr>
                          			<tr>
                          				<td>
											<label style="float:left"><font size="+0.5">下单时间：<%=sell.getS_time() %></font></label>
										</td>
                          			</tr>
                          			<tr>
                          				<td>
											<label style="float:left"><font size="+0.5">订单编号：<%=sell.getS_id() %></font></label>
										</td>
                          			</tr>
                          		</table>
                          </td>
                        </tr>
                        </table>
                    </div>
                  	<%		
                  		}
                  	%>
	                  
                    
                    
                </div>
              
              
              
              
              
              
              
              
              
                <div class="table-wrapper-responsive">
                <table summary="Shopping cart" aligin="center">
                  <tr>
                    <th class="goods-page-image">序号</th>
                    <th class="goods-page-image">蛋糕图片</th>
                    <th class="goods-page-description">蛋糕名称</th>
                    <th class="goods-page-quantity">数量</th>
                    <th class="goods-page-price">单价</th>
                    <th class="goods-page-total" colspan="2">小计</th>
                  </tr>
                  
                  <c:forEach var="cartList" items="<%= detailList %>">
	                  <tr>
	                    <td class="goods-page-ref-no">
	                      	<%=i++ %>
	                    </td>
	                    <td class="goods-page-image">
 	                      	<a href="../single.jsp?c_id=${cartList.c_id }"><img src="../${cartList.c_image }" class="img-responsive" alt="Responsive image"></a>
	                    </td>
	                    <td class="goods-page-description" valign="middle">
	                      <b>${cartList.c_name }</b>
	                    </td>
	                    
                    <td class="goods-page-quantity">
						<font size="+1">${cartList.d_num }</font>
                    </td>
 	                    
 	                    
	                    <td class="goods-page-price">
	                      <strong>¥ ${cartList.c_price }</strong>
	                    </td>
	                    <td class="goods-page-total">
	                      <strong>¥ ${cartList.c_price*cartList.d_num }</strong>
	                    </td>
	                </tr>
                  </c:forEach>
                  
                  
                </table>
                </div>

                <div class="shopping-total">
                  <ul>
                  <c:if test="<%=sell.getS_freight() > 0 %>">
                    <li id="freight">
                      <em>配送费</em>
                      <strong class="price">¥ <%=sell.getS_freight() %></strong>
                    </li>
                   </c:if>
                    <li>
                      <em>总计</em>
                      <strong class="price">¥ <%=sell.getS_money() %></strong>
                    </li>
                  </ul>
                </div>
              </div>
              <a href="sell.jsp"><button class="btn btn-default">返回订单 <i class="fa fa-shopping-cart"></i></button></a>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>
    </div>
		
		
      </div>
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
    <!-- BEGIN CORE PLUGINS (REQUIRED FOR ALL PAGES) -->
    <!--[if lt IE 9]>
    <script src="assets/plugins/respond.min.js"></script>  
    <![endif]-->  
    <script src="../static/Zev/assets/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="../static/Zev/assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="../static/Zev/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>      
    <script src="../static/Zev/assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>
    <script src="../static/Zev/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->

    <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
    <script src="../static/Zev/assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
    <script src="../static/Zev/assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
    <script src='../static/Zev/assets/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
    <script src="../static/Zev/assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->
    <script src="../static/Zev/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
    <script src="../static/Zev/assets/plugins/rateit/src/jquery.rateit.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script><!-- for slider-range -->

    <script src="../static/Zev/assets/corporate/scripts/layout.js" type="text/javascript"></script>
    
    <script type="text/javascript" src="../static/Zev/assets/layer/2.4/layer.js"></script> 
    
    <script src="../static/Zev/assets/javascripts/jquery.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            Layout.initTwitter();
            Layout.initImageZoom();
            Layout.initTouchspin();
            Layout.initUniform();
            Layout.initSliderRange();
        });

    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
    
  </body>
</html>
