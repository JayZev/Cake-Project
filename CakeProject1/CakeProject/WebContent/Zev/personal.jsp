<%@page import="com.service.impl.ImplUserService"%>
<%@page import="com.service.InfUserService"%>
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
    
    <script>
    	var u_appellation = "";
		var u_phone = "";
		var u_address = "";
		var u_name = "";
		var u_sex = "";
    	function modify() {
    		var table = $("#mytable").children("tr");

    		console.log($("#address").text());
    		
    		u_appellation = $("#appellation").text().trim();
    		u_phone = $("#phone").text().trim();
    		u_address = $("#address").text().trim();
    		u_name = $("#name").text().trim();
    		if (u_name != "") {
    			u_sex = u_name.substring(u_name.indexOf("(")+1, u_name.indexOf(")"));
    		}
    		u_name = u_name.substring(0, u_name.indexOf("("));
    		txt = "";
    		
    		
    		txt += "<table id='myTable' class='table table-hover'><tr><td align='right'><font size='+1'>昵称:</font></td>";
    		txt += "<td>";
    		txt += "<font size='+1'><input id='appellation' type='text' value='"+u_appellation+"'></font></td></tr>";
    		txt += "<tr><td align='right'><font size='+1'>手机号:</font></td>";
    		txt += "<td><font size='+1'><input id='phone' type='text' value='"+u_phone+"'></font></td></tr>";
    		txt += "<tr><td align='right'><font size='+1'>地址:</font></td>";
    		txt += "<td><font size='+1'><input id='address' type='text' value='"+u_address+"'></font></td></tr>";
    		txt += "<tr><td align='right'><font size='+1'>姓名:</font></td>";
    		txt += "<td><font size='+1'><input id='name' type='text' value='"+u_name+"'></font></td></tr>";
    		txt += "<tr><td>&nbsp;</td><td id='sex'>";
    		if (u_sex == "女士") {
    			txt += "<label><input type='radio' name='sex' value='先生' >先生</label>";
        		txt += "<label><input type='radio' name='sex' value='女士' checked>女士</label></td></tr>";
    		} else {
    			txt += "<label><input type='radio' name='sex'  value='先生' checked>先生</label>";
        		txt += "<label><input type='radio' name='sex' value='女士' >女士</label></td></tr>";
    		}
    		txt += "<tr><td align='right'><button type='button' class='btn btn-info' onClick=\"confirm('确定')\"><font size='+1'>确定</font></button></td>";
    		txt += "<td align='left'><button type='button' class='btn btn-info' onClick=\"confirm('返回')\"><font size='+1'>返回</font></button></td></tr></table>";
				
			$("#content").html(txt);
		
    	}
    	
    	function confirm(btn) {
    		if(btn == "确定") {
    			u_appellation = $("#appellation").val().trim();
        		u_phone = $("#phone").val().trim();
        		u_address = $("#address").val().trim();
        		u_name = $("#name").val().trim();
        		u_sex = $('#sex input[name="sex"]:checked ').val();
        		console.log(u_sex);
        		console.log("来了老弟");
        		console.log("u_sex");
        		$.ajax({
        			url:"../ModifyUserServlet",
        			type:"post",
        			data: {appellation:u_appellation,phone:u_phone,address:u_address,name:u_name,sex:u_sex},
        			//contentType: "application/json;charset=utf-8",
        			//datatype:"json",
        			success:function(data) {
        				
        			}
        		});
    		}
    		txt = "";
//     		txt += 
    		
    		txt += "<table id='myTable' class='table table-hover'>";
    		txt += "<tr><td align='right'><font size='+1'>昵称:</font></td>";
    		txt += "<td id='appellation'>";
    		txt += "<font size='+1'>"+u_appellation+"</font>";
    		txt += "</td></tr><tr>";
    		txt += "<td align='right'><font size='+1'>手机号:</font></td>";
    		txt += "<td id='phone'>";
    		txt += "<font size='+1'>"+u_phone+"</font></td></tr>";
				
			
    		txt += "<tr><td align='right'><font size='+1'>地址:</font></td>";
    		txt += "<td id='address'><font size='+1'>"+u_address+"</font></td></tr><tr>";
			
			
    		txt += "<td align='right'><font size='+1'>姓名:</font></td>";
    		txt += "<td id='name'>";
    		txt += "<font size='+1'>"+u_name+"("+u_sex+")</font></td></tr>";
				
    		txt += "<tr><td>&nbsp;</td>";
    		txt += "<td><button type='button' class='btn btn-info' onClick='modify()'><font size='+1'>修改</font></button></td>";
    		txt += "</tr></table>";
    		$("#content").html(txt);
			
		
    		
    	}
    </script>
    
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
                  	个人资料
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
     	User u = (User)session.getAttribute("userInfo");
     	int u_id = u.getU_id();
     	
     	InfUserService userServer = new ImplUserService();
     	User user = userServer.selectUserById(u_id);
     	
     %>
     
	<div id="content" class="col-md-10 col-md-offset-1">
		<table id="myTable" class="table table-hover">
			<tr>
				<td align="right"><font size="+1">昵称:</font></td>
				<td id="appellation">
				<font size="+1"><c:out value="<%=user.getU_appellation()==null ? \"\" : user.getU_appellation() %>"></c:out></font>
				</td>
			</tr>
			<tr>
				<td align="right"><font size="+1">手机号:</font></td>
				<td id="phone">
				<font size="+1"><c:out value="<%=user.getU_phone()==null ? \"\" : user.getU_phone() %>"></c:out></font>
				</td>
			</tr>
			<tr>
				<td align="right"><font size="+1">地址:</font></td>
				<td id="address"><font size="+1"><c:out value="<%=user.getU_address()==null ? \"\" : user.getU_address() %>"></c:out></font></td>
			</tr>
			<tr>
				<td align="right"><font size="+1">姓名:</font></td>
				<td id="name">
				<font size="+1"><c:out value="<%=user.getU_name()==null ? \"\" : user.getU_name() %>"></c:out>
				<%
					if (user.getU_name()!=null && !user.getU_name().equals("")) {
						if (user.getU_sex().equals("男")) {
				%>
								(先生)
				<%			
						} else {
				%>
								(女士)			
				<%		
						}
				%>	
<%-- 						<c:out value="(<%=user.getU_sex().equals('男') ? \"先生\" : \"女士\" %>)"></c:out> --%>
				<%		
					}
				%>
				</font>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><button type="button" class="btn btn-info" onClick="modify()"><font size="+1">修改</font></button></td>
			</tr>
			
			
		</table>
			
		
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
		$(function()
		{
			$('.scroll-pane').jScrollPane();
		});
		
		var table = $("#mytable").children("tr");
		u_appellation = table.eq(0).find("td").last().text();
		u_phone = table.eq(1).find("td").last().text();
		u_address = table.eq(2).find("td").last().text();
		u_name = table.eq(3).find("td").last().text();
		u_sex = "";
		if (u_name != "") {
			u_sex = u_name.substring(u_name.indexOf("(")+1, u_name.indexOf(")"));
		}
		u_name = u_name.substring(0, u_name.indexOf("("));
	</script>
</body>
</html>