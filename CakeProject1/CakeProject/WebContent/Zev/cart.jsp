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
  <link href="../static/Zev/assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
  <link href="../static/Zev/assets/corporate/css/style-responsive.css" rel="stylesheet">
  <link href="../static/Zev/assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
  <link href="../static/Zev/assets/corporate/css/custom.css" rel="stylesheet">
  
  
  
  
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
    
    <script src="../static/Zev/assets/javascripts/jquery.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
    	$(".zev").change(function() {
    		var num = $(this).val();
    		console.log(num);
    		if (num < 1 || value=="") {
    			$(this).val(1);
    		}
    	});
    	
    	$("#selectAll").click(function() {
    		$(".mybox").prop('checked', $("#selectAll").is(':checked'));
    		calculate();
    		enableBtn();
    	});
    	
    	$(".mybox").click(function() {
    		var box = $(".mybox");
    		var bool = true;
    		for (var i = 0; i < box.length; i++) {
    			if (!$(box[i]).is(':checked')) {
    				bool = false;
    				break;
    			}
    		}
    		$("#selectAll").prop('checked', bool);
    		calculate();
    		enableBtn();
    	});
    });
    function sub(d) {
    	var num = parseInt($(d).parent().children("input").first().val());
    	num = (num-1) >= 1 ? (num-1) : 1;
    	$(d).parent().children("input").first().val(num);
    	changeTotal(num,d);
    }
    
    function add(d) {
    	var num = parseInt($(d).parent().children("input").first().val());
    	$(d).parent().children("input").first().val(num+1);
    	changeTotal(num+1,d);
    }
    //计算总价的函数
    function changeTotal(num,d) {
    	var content = $(d).parent().next().children("strong").first().html();
    	var price = parseFloat(content.substring(2));
    	$(d).parent().next().next().children("strong").first().html("¥ "+(price*num));
    	calculate();
    	var car_id = $(d).parent().parent().find(".mybox").val();
    	var car_num = num;
    	$.ajax({
    		url:"../CartServlet",
			type:"post",
			data: {"car_id":car_id,"car_num":car_num},
			success:function(data) {
				
			}
    	});
    }
    //计算总金额的函数
    function calculate() {
    	var box = $(".mybox");
    	var total = 0;
    	for (var i = 0; i < box.length; i++) {
    		if (!($(box[i]).is(':checked'))) {
    			continue;
    		}
    		var content = $(box[i]).parent().parent().find("strong").last().html();
    		var money = parseFloat(content.substring(2));
    		total += money;
    	}
    	$(".price").first().html("¥ "+total);
    }
    //删除购物信息的函数
    function delCart(car_id) {
    	$.ajax({
    		url:"../DelCartServlet",
			type:"post",
			data: {"car_id":car_id},
			success:function(data) {
				$(".goods-data.clearfix").html(data);
			}
    	});
    }
    
    //结账按钮的禁用与启用
    function  enableBtn() {
    	console.log("我来了");
    	var box = $(".goods-page-ref-no");
    	var bool = true;
    	for (var i = 1; i < box.length; i++) {
    		if ($(box[i]).find("input").is(':checked')) {
    			bool = false;
    			break;
    		}
    	}
    	$(".btn.btn-primary").last().attr('disabled',bool);
    }
    
    </script>
    <style>
    <!--
    	#mybtn{
	    	display: inline-block;
			padding: 6px 12px;
			margin-bottom: 0;
			font-size: 14px;
			font-weight: normal;
			line-height: 1.42857143;
			text-align: center;
			white-space: nowrap;
			vertical-align: middle;
			-ms-touch-action: manipulation;
			touch-action: manipulation;
			cursor: pointer;
			-webkit-user-select: none;
			-moz-user-select: none;
			-ms-user-select: none;
			user-select: none;
			background-image: none;
			border: 1px solid
			transparent;
		    border-top-color: transparent;
		    border-right-color: transparent;
		    border-bottom-color: transparent;
		    border-left-color: transparent;
			border-radius: 4px;
		}
		
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
                        <a href="../index.jsp"><font size="+1">首页</font></a>
                      </li>
                      <li>
                        <a href="../shop.jsp"><font size="+1">购物中心</font></a>
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
							<a href="#" id="exit" class="mybtn"><font size="+1">退出</font></a>
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
                
<!--                 <h1> -->
<!--                   Shopping -->
<!--                 </h1> -->
                <h2 style="font-size: 30px;font-family: 'moon_flower_boldregular';color: inherit;">
                  	购物车
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
        	User user = (User)session.getAttribute("userInfo");
//         	int u_id = session
			int u_id = user.getU_id();

        	InfCarService carService = new ImplCarService();
        	List<CartList> list = carService.selectCarByUId(u_id);
        %>
        <!-- 购物车部分 -->
      <div class="main" >
      <div class="container">
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN CONTENT -->
          <div class="col-md-12 col-sm-12">
                <form action="checkout.jsp" method="post">
            <div class="goods-page">
              <div class="goods-data clearfix">
                <div class="table-wrapper-responsive">
                
                <table summary="Shopping cart">
                  <tr>
                    <th class="goods-page-ref-no"><input type="checkbox" checked id="selectAll">全选</th>
                    <th class="goods-page-image">蛋糕图片</th>
                    <th class="goods-page-description">蛋糕名称</th>
                    <th class="goods-page-quantity">数量</th>
                    <th class="goods-page-price">单价</th>
                    <th class="goods-page-total" colspan="2">小计</th>
                  </tr>
                  
                  <c:forEach var="cartList" items="<%= list %>">
	                  <tr>
	                    <td class="goods-page-ref-no">
	                      	<input type="checkbox" class="mybox" checked value="${cartList.car_id }" name="myhidden">
	                    </td>
	                    <td class="goods-page-image">
 	                      	<a href="single.jsp?c_id=${cartList.c_id }"><img src="../${cartList.c_image }" class="img-responsive" alt="Responsive image"></a>
	                    </td>
	                    <td class="goods-page-description" valign="middle">
	                      <b>${cartList.c_name }</b>
	                    </td>
	                    
                    <td class="goods-page-quantity">
						<button type="button" class="btn btn-default" onclick="sub(this)">-</button>
						<input type="text" class="zev" oninput = "value=value.replace(/[^\d]/g,'')" value="${cartList.car_num }" style="float:left;width:50px;height:33px;text-align:center;color:#666666" >
						<button type="button" class="btn btn-default" onclick="add(this)">+</button>
                    </td>
 	                    
 	                    
	                    <td class="goods-page-price">
	                      <strong>¥ ${cartList.c_price }</strong>
	                    </td>
	                    <td class="goods-page-total">
	                      <strong>¥ ${cartList.c_price*cartList.car_num }</strong>
	                      <c:set var="total" value="${total+cartList.c_price*cartList.car_num }"></c:set>
	                    </td>
	                    <td class="del-goods-col">
	                      <a class="del-goods" href="javascript:delCart(${cartList.car_id })">&nbsp;</a>
	                    </td>
	                </tr>
                  </c:forEach>
                  
                  
                </table>
                </div>

                <div class="shopping-total">
                  <ul>
                    <li>
                      <em>总计</em>
                      <strong class="price">¥ <c:out value="${total }"></c:out></strong>
                    </li>
                  </ul>
                </div>
              </div>
<!--               <a href="../shop.jsp"><button class="btn">继续购物 <i class="fa fa-shopping-cart"></i></button></a> -->
			   <a href="../shop.jsp"><input class="btn btn-default" type="button" value="继续购物"></a>
              <button class="btn btn-primary" type="submit">核对 <i class="fa fa-check"></i></button>
            </div>
                </form>
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
        
        enableBtn();
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
  </body>
</html>

