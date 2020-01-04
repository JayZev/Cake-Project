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
    function modify() {
    	var table = $(".datasheet").first().find("td");
    	address = $(table[0]).text();
    	address = address.substring(address.indexOf("：")+1).trim();
    	name = $(table[1]).text();
    	sex = name.substring(name.indexOf("(")+1, name.indexOf(")"));
    	name = name.substring(name.indexOf("：")+1, name.indexOf("("));
    	phone = $(table[2]).text();
    	phone = phone.substring(phone.indexOf("：")+1).trim();
    	
    	var txt = "";
    	txt += "";
    	txt += "<tr>";
    	txt += "<td class='datasheet-features-type'>";
    	txt += " <font size='+0.5'>地&emsp;&emsp;址：<input type='text' value='"+address+"'></font>";
    	txt += " </td></tr>";
        
    	txt += "<tr>";
    	txt += "<td class='datasheet-features-type'>";
    	txt += "<font size='+0.5'>收&nbsp;&nbsp;货&nbsp;&nbsp;人：<input type='text' value='"+name+"'></font>";
    	txt += "</td></tr>";
    	txt += "<tr><td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;";
    	if (sex == "先生") {
    		txt += "<label><font size='+0.5'><input type='radio' name='sex' value='先生' checked>先生</font></label>";
        	txt += "&emsp;&emsp;<label><font size='+0.5'><input type='radio' name='sex' value='女士'>女士</font></label>";
    	} else {
    		txt += "<label><font size='+0.5'><input type='radio' name='sex' value='先生'>先生</font></label>";
        	txt += "&emsp;&emsp;<label><font size='+0.5'><input type='radio' name='sex' value='女士' checked>女士</font></label>";
    	}
    	txt += "</td></tr>";
    	txt += "<tr>";
    	txt += "<td class='datasheet-features-type'><font size='+0.5'>联系方式：<input type='text' value='"+phone+"'></font></td>";
    	txt += "</tr>";
    	txt += "<tr>";
    	txt += "<td class='datasheet-features-type'>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;";
    	txt += "<button type='button' class='btn btn-info' onClick=\"confirm('确定')\">确定</button>&emsp;&emsp;";
    	txt += "<button type='button' class='btn btn-info' onClick=\"confirm('返回')\">返回</button>";
    	txt += "</td></tr>";
    	$(".datasheet").first().html(txt);
    	$(".btn.btn-primary").last().attr('disabled',true);
    }
    function confirm(btn) {
    	if (btn == "确定") {
    		var table = $(".datasheet").first().find("td");
        	address = $(table[0]).find("input").val().trim();
        	name = $(table[1]).find("input").val().trim();
        	sex = $(table[2]).find("input[name='sex']:checked").val();
        	phone = $(table[3]).find("input").val().trim();
    	}
    	
    	txt = "";
    	txt += "<tr><td class='datasheet-features-type'>";
    	txt += "<font size='+0.5'>地&emsp;&emsp;址："+address+"</font></td>";
    	txt += "<td class='datasheet-features-type'><font size='+0.5'>";
    	txt += "收&nbsp;&nbsp;货&nbsp;&nbsp;人："+name+"("+sex+")</font></td><tr>";
    	txt += "<td class='datasheet-features-type'><font size='+0.5'>联系方式："+phone+"</font></td>";
    	txt += "<td class='datasheet-features-type'><label style='float:left'><font size='+0.5'>送达时间：</font></label>";
    	txt += "<select class='form-control' style='width:80px;float:left;padding:3px'>";
    	var d = new Date();
    	d.setMinutes(d.getMinutes()+30);
    	var hour = d.getHours();
    	var minute = d.getMinutes();
    	
		if (minute <= 30) {
			d.setMinutes(30);
		} else {
			d.setMinutes(30);
			d.setMinutes(d.getMinutes()+30);
		}
		console.log(hour+"\t"+minute);
		console.log(d);
		txt += "<option value='"+hour+":"+minute+"'>"+hour+":"+(minute < 10 ? "0"+minute : minute)+"</option>";
		for (; d.getHours()<=22; d.setMinutes(d.getMinutes()+30)) {
			var h = d.getHours();
 			var min = d.getMinutes();
 			var m = min+"";
 			if (min == 0) {
 				m = "00";
 			}
 			txt += "<option value='"+h+":"+min+"'>"+h+":"+m+"</option>";
		}
          
		txt += "</select></td></tr>";
        
      
		txt += "<tr>";
		txt += "<td class='datasheet-features-type' align='center'>";
		txt += "<button type='button' class='btn btn-info' onClick='modify()'>修改信息</button>";
		txt += " </td><td>&nbsp;</td></tr>";
    	$(".datasheet").first().html(txt);
    	$(".btn.btn-primary").last().attr('disabled',false);
    }
    //上门取货修改电话的函数
    function phoneModify(d) {
    	var type = $(d).text();
    	if (type == "修改") {
    		$(".btn.btn-primary").last().attr('disabled',true);
        	$(d).text("确定");
        	var p = $(d).parent().children("label").text().trim();
        	var txt = "";
        	txt += "<input type='text' value=\""+p+"\">"
        	$(d).parent().children("label").html(txt);
    	} else {
    		$(".btn.btn-primary").last().attr('disabled',false);
        	$(d).text("修改");
        	var p = $(d).parent().children("label").children("input").val();
        	$(d).parent().children("label").html(p);
    	}
    	
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
              
              <h2  style="font-size: 30px;font-family: 'moon_flower_boldregular';color: inherit;">
                  	核对订单
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
        	String lng = (String)session.getAttribute("lng");
    		String lat = (String)session.getAttribute("lat");
    		if ("".equals(lng) || lng == null) {
    			session.setAttribute("lng", "-1000");
    			session.setAttribute("lat", "-1000");
    		}
    		
    		String[] date = request.getParameterValues("myhidden");
    		if (date == null || date.length == 0) {
    			response.sendRedirect("cart.jsp");
    			return;
    		}
    		
    		
    		List<String> totalList = Arrays.asList(date);
			
//         	int u_id = session
			User u = (User)session.getAttribute("userInfo");
			int u_id = u.getU_id();
        	InfCarService carService = new ImplCarService();
        	List<CartList> list = carService.selectCarByUId(u_id);
        	
			for (int i = 0; i < list.size(); i++) {
				if (!totalList.contains(list.get(i).getCar_id()+"")) {
					list.remove(i);
					i--;
					continue;
				}
			}
			
        	
        	
        	InfUserService userService = new ImplUserService();
        	User user = userService.selectUserById(u_id);
        	
        	Date d = new Date();
        	d.setMinutes(d.getMinutes()+30);
        	
        	int hour = d.getHours();
        	int minute = d.getMinutes();
        	
			if (minute <= 30) {
				d.setMinutes(30);
			} else {
				d.setMinutes(30);
				d.setMinutes(d.getMinutes()+30);
			}
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
                    <li class="active" onclick="freight('送货上门')"><a href="#Reviews" data-toggle="tab">送货上门</a></li>
                    <li><a href="#Information" data-toggle="tab" onclick="freight('上门取货')">上门取货</a></li>
                  </ul>
                  <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade in active" id="Reviews">
                     <table class="datasheet">
                        <tr>
                          <td class="datasheet-features-type">
                          	<font size="+0.5">地&emsp;&emsp;址：<%=user.getU_address() %></font>
                          </td>
                          <td class="datasheet-features-type"><font size="+0.5">收&nbsp;&nbsp;货&nbsp;&nbsp;人：<%=user.getU_name() %>(<%=user.getU_sex().equals("男") ? "先生" : "女士" %>)</font></td>
<!--                           <td><a>信息编辑</a></td> -->
                        </tr>
                        <tr>
                          <td class="datasheet-features-type"><font size="+0.5">联系方式：<font face="黑体"><%=user.getU_phone() %></font></td>
                          <td class="datasheet-features-type"><label style="float:left"><font size="+0.5">送达时间：</font></label>
                          	<select class="form-control" style="width:80px;float:left;padding:3px">
                          		<option value="<%=hour %>:<%=minute %>"><%=hour %>:<%=minute < 10 ? "0"+minute : minute+"" %></option>
                           		<% 
 	                          		for ( ;d.getHours()<=22; d.setMinutes(d.getMinutes()+30)) {
 	                          			int h = d.getHours();
 	                          			int min = d.getMinutes();
 	                          			String m = min+"";
 	                          			if (min == 0) {
 	                          				m = "00";
 	                          			}
 	                      		%>	 
 	                      			<option value="<%=h %>:<%=min %>"><%=h %>:<%=m %></option> 
	                      			
 	                          	<%		 
 	                      			}
                           		%> 
                          	</select>
                          </td>
                        </tr>
                        <tr>
                          <td class="datasheet-features-type" align="center">
                          <button type="button" class="btn btn-info" onClick="modify()">修改信息</button>
                          </td>
                          <td>&nbsp;</td>
                        </tr>
                        
                      </table>
                    </div>
                    
                    
                    
                    <div class="tab-pane fade" id="Information">
                       	
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
											<font size="+0.5">预留电话：<font face="黑体"><label id="mylabel"><%=user.getU_phone() %></label>&emsp;&emsp;<button type="button" class="btn btn-info" onClick="phoneModify(this)">修改</button>
										</td>
                          			</tr>
                          			<tr>
                          				<td>
											<label style="float:left">自取时间：</label>
											  <%
				
									        	Date time = new Date();
											  	time.setMinutes(time.getMinutes()+30);
									        	
									        	int hours = time.getHours();
									        	int minutes =time.getMinutes();
									        	
												if (minutes <= 30) {
													time.setMinutes(30);
												} else {
													time.setMinutes(30);
													time.setMinutes(time.getMinutes()+30);
												}
											  %>
											  <select id="myselect" class="form-control" style="width:80px;float:left;padding:3px">
				                          		<option value="<%=hours %>:<%=minutes %>"><%=hours %>:<%=minutes < 10 ? "0"+minutes : minutes+"" %></option>
				                           		<% 
				 	                          		for ( ;time.getHours()<=22; time.setMinutes(time.getMinutes()+30)) {
				 	                          			int h = time.getHours();
				 	                          			int min = time.getMinutes();
				 	                          			String m = min+"";
				 	                          			if (min == 0) {
				 	                          				m = "00";
				 	                          			}
				 	                      		%>	 
				 	                      			<option value="<%=h %>:<%=min %>"><%=h %>:<%=m %></option> 
					                      			
				 	                          	<%		 
				 	                      			}
				                           		%> 
				                          	</select>
										</td>
                          			</tr>
                          		</table>
                          </td>
                        </tr>
                        </table>
                    </div>
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
                  
                  <c:forEach var="cartList" items="<%= list %>">
	                  <tr>
	                    <td class="goods-page-ref-no">
	                      	<%=i++ %><input type="hidden" value="${cartList.car_id }" >
	                    </td>
	                    <td class="goods-page-image">
 	                      	<a href="single.jsp?c_id=${cartList.c_id }"><img src="../${cartList.c_image }" class="img-responsive" alt="Responsive image"></a>
	                    </td>
	                    <td class="goods-page-description" valign="middle">
	                      <b>${cartList.c_name }</b>
	                    </td>
	                    
                    <td class="goods-page-quantity">
						<font size="+1">${cartList.car_num }</font>
                    </td>
 	                    
 	                    
	                    <td class="goods-page-price">
	                      <strong>¥ ${cartList.c_price }</strong>
	                    </td>
	                    <td class="goods-page-total">
	                      <strong>¥ ${cartList.c_price*cartList.car_num }</strong>
	                      <c:set var="total" value="${total+cartList.c_price*cartList.car_num }"></c:set>
	                    </td>
	                </tr>
                  </c:forEach>
                  
                  
                </table>
                </div>

                <div class="shopping-total">
                  <ul>
                    <li id="freight">
                      <em>配送费</em>
                      <strong class="price">¥ <c:out value="5"></c:out></strong>
                    </li>
                    <li>
                      <em>总计</em>
                      <strong class="price">¥ <c:out value="${total+5 }"></c:out></strong>
                    </li>
                  </ul>
                </div>
              </div>
              <a href="cart.jsp"><button class="btn btn-default">返回购物车 <i class="fa fa-shopping-cart"></i></button></a>
              <button class="btn btn-primary" type="submit" onClick="over()">结账 <i class="fa fa-check"></i></button>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>
    </div>
		
		
    <form action="../alipay.trade.page.pay.jsp" method="post" id="myform">
    	<input type="hidden" value="" name="detail">
    	<input type="hidden" value="" name="address">
    	<input type="hidden" value="" name="name">
    	<input type="hidden" value="" name="sex">
    	<input type="hidden" value="" name="phone">
    	<input type="hidden" value="" name="time">
    	<input type="hidden" value="" name="money">
    	<input type="hidden" value="" name="freight">
    	<input type="hidden" id="WIDout_trade_no" value="" name="WIDout_trade_no">
    </form>
		
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

        
        //结账的函数
        function over() {
        	console.log(pre_type);
        	if (pre_type == "送货上门") {
        		var table = $(".datasheet").first().find("td");
            	var local = $(table[0]).text();
            	local = local.substring(local.indexOf("：")+1).trim();
            	var txt_name = $(table[1]).text();
            	var txt_sex = txt_name.substring(txt_name.indexOf("(")+1, txt_name.indexOf(")"));
            	txt_name = txt_name.substring(txt_name.indexOf("：")+1, txt_name.indexOf("(")).trim();
            	var txt_phone = $(table[2]).text().trim();
            	txt_phone = txt_phone.substring(txt_phone.indexOf("：")+1).trim();
            	var time = $(table[3]).find("select option:checked").text();
            	
            	var m = $(".price").last().text().substring(2);
            	
            	var f = $(".price").first().text().substring(2);
            	
            	
            	if (local == "" || local == null) {
        			alert("配送地址不能为空");
        			return;
        		}

            	if (txt_name == "" || txt_name == null) {
        			alert("收货人姓名不能为空");
        			return;
        		}

            	if (txt_phone == "" || txt_phone == null) {
        			alert("联系方式不能为空");
        			return;
        		}
            	
            	console.log(m);
            	console.log(f);
            	
            	console.log(local);
            	console.log(txt_name);
            	console.log(txt_sex);
            	console.log(txt_phone);
            	console.log(time);

        		
            	console.log($("#myform").children()[0]);
        		$("#myform").children().eq(0).val(JSON.stringify(<%=totalList %>)+""); 
        		$("#myform").children().eq(1).val(local);
        		$("#myform").children().eq(2).val(txt_name);
        		$("#myform").children().eq(3).val(txt_sex);
        		$("#myform").children().eq(4).val(txt_phone);
        		$("#myform").children().eq(5).val(time);
        		$("#myform").children().eq(6).val(m);
        		$("#myform").children().eq(7).val(f);
        		
        		GetDateNow();
        		
        		
        		$("#myform").submit();
            	console.log($("#myform").children().eq(8).val());
        		
//             	$.ajax({
//             		url:"../alipay.trade.page.pay.jsp",
//     				type:"post",
<%--     				data: {info:JSON.stringify(<%=totalList %>),address:local,name:txt_name,sex:txt_sex,phone:txt_phone,times:time,money:m,freight:f, id:out_trade_no}, --%>
//     				success: function(data){
//     					layer.msg('结账成功',{icon:1});
    					
//     					setTimeout("location.href='sell.jsp'",1000);
//     				}
//             	});
        	} else {
        		var p = $("#mylabel").text().trim();
        		var t = $("#myselect").find("option:checked").text();
        		var m = $(".price").last().text().substring(2);
        		console.log(p);
        		console.log(t);
        		
        		if (p == "" || p == null) {
        			alert("预留电话不能为空");
        			return;
        		}
        		
        		$("#myform").children().eq(0).val(JSON.stringify(<%=totalList %>));
        		$("#myform").children().eq(4).val(p);
        		$("#myform").children().eq(5).val(t);
        		$("#myform").children().eq(6).val(m);
        		$("#myform").children().eq(7).val(0);
        		
        		GetDateNow();
        		
        		
        		$("#myform").submit();
            	console.log($("#myform").children().eq(8).val());
        		
//         		$.ajax({
//             		url:"../alipay.trade.page.pay.jsp",
//     				type:"post",
<%--     				data: {info:JSON.stringify(<%=totalList %>),phone:p,time:t,money:m, id:out_trade_no}, --%>
//     				success: function(data){
//     					layer.msg('结账成功',{icon:1});

//     					setTimeout("location.href='sell.jsp'",1000);
//     				}
//             	});
        		
        		
        		
        		
        	}
        	
        	
        }
        
        function GetDateNow() {
    		var vNow = new Date();
    		var sNow = "";
    		sNow += String(vNow.getFullYear());
    		sNow += String(vNow.getMonth() + 1);
    		sNow += String(vNow.getDate());
    		sNow += String(vNow.getHours());
    		sNow += String(vNow.getMinutes());
    		sNow += String(vNow.getSeconds());
    		sNow += String(vNow.getMilliseconds());
    		document.getElementById("WIDout_trade_no").value =  sNow;
//     		document.getElementById("WIDsubject").value = "测试";
//     		document.getElementById("WIDtotal_amount").value = "0.01";
    	}
    	GetDateNow();
    	console.log($("#myform").children().eq(8).val());
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
    
  </body>
</html>
