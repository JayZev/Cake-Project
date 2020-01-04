<%@page import="com.bean.Manage"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>设置</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/vendor/linearicons/style.css">
	<link rel="stylesheet" href="assets/css/main.css">
	<link rel="stylesheet" href="assets/css/demo.css">
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
	<script type="text/javascript">
	function stime() {
		var pwd1 = document.getElementById("pwd1").value;
		var pwd2 = document.getElementById("pwd2").value;
		if(pwd1==null && pwd2==null){
		div1.innerHTML = "<font color='red'>两次密码都不能为空</font>";
		$("#submit1").attr("disabled", "true");
		}
		if(pwd1==""){
			div1.innerHTML = "<font color='red'>密码不能为空</font>";
			$("#submit1").attr("disabled", "true");
		} else {
			div1.innerHTML = "";
		}
		if(pwd2==""){
			div1.innerHTML = "<font color='red'>密码不能为空</font>";
			$("#submit1").attr("disabled", "true");
		} else {
			div2.innerHTML = "";
		}
		if(pwd1 != pwd2){
		div2.innerHTML = "<font color='red'>两次密码不一致</font>";
		$("#submit1").attr("disabled", "true");
		}
		if(pwd1 == pwd2 && pwd1 != ""){
			div2.innerHTML = "<font color='green'>两次密码相同</font>";
			$("#submit1").removeAttr("disabled");
		}
	}
	</script>
</head>
<body>
	<!-- 设置页面 -->
	<div id="wrapper">
		<!-- logo -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="index.html"><img src="assets/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				<div class="navbar-btn navbar-btn-right">
					<a class="btn btn-success update-pro"  title="Upgrade to Pro" target="_blank"> <span>退出后台管理</span></a>
				</div>
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
								<i class="lnr lnr-alarm"></i>
								<span class="badge bg-danger">5</span>
							</a>
							<ul class="dropdown-menu notifications">
								<li><a href="#" class="notification-item"><span class="dot bg-warning"></span>消息提示1</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-danger"></span>消息提示2</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-success"></span>消息提示3</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-warning"></span>消息提示4</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-success"></span>消息提示5</a></li>
								<li><a href="#" class="more">更多消息</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="img/Starry.jpg" class="img-circle" alt="Avatar"> <span>Admin</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="lnr lnr-user"></i> <span>基本信息</span></a></li>
								<li><a href="#"><i class="lnr lnr-envelope"></i> <span>个人邮箱</span></a></li>
								<li><a href="#"><i class="lnr lnr-cog"></i> <span>设置</span></a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- 框架身体 -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="index.jsp" class=""><i class="lnr lnr-home"></i> <span>后台首页</span></a></li>
						<li><a href="Statistics.jsp" class=""><i class="lnr lnr-chart-bars"></i> <span>统计报表</span></a></li>
						<li><a href="#subPages1" data-toggle="collapse" class="collapsed"><i class="lnr lnr-dice"></i> <span>订单信息</span><i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages1" class="collapse">
								<ul class="nav">
									<li><a href="Sell.jsp" class="">历史订单信息</a></li>
									<li><a href="Sell2.jsp" class="">待处理订单信息</a></li>
								</ul>
							</div>	
						</li>
						<li><a href="Feedback.jsp" class=""><i class="lnr lnr-text-format"></i> <span>用户反馈</span></a></li>
						<li>
							<a href="#subPages" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>商品管理</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="nav">
									<li><a href="AddCake.jsp" class="">新增商品</a></li>
									<li><a href="AmendCake.jsp" class="">修改商品</a></li>
									<li><a href="RemoveCake.jsp" class="">删除商品</a></li>
								</ul>
							</div>
						</li>
						<li><a href="Setting.jsp" class="active"><i class="lnr lnr-cog"></i> <span>设置</span></a></li>
					</ul>
				</nav>
			</div>
		</div>

		<div class="main">
			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">后台设置</h3>
					<div class="row">
						<div class="col-md-12">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">修改密码</h3>
								</div>
								<% 
								 String pwd = session.getAttribute("managePwd").toString();	
								%>
								<div class="panel-body" style="width: 50%;">
									<form method="post" action="../SettingServlet">
										<div class="form-group">
											<label for="exampleInputPassword1">原始密码：</label> 
											<input type="text" class="form-control"
											 id="pwd" name ="pwd" value="<%=pwd %>">
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">第一次密码：</label> 
											<input type="password" class="form-control"
											 id="pwd1" name ="pwd1" placeholder="请输入密码"  onblur="stime()">
										</div>
										<div id="div1" style="display:on"></div>
										<div class="form-group">
											<label for="exampleInputPassword1">第二次密码：</label> 
											<input type="password" class="form-control"
											 id="pwd2" name ="pwd2" placeholder="请输入相同密码" onblur="stime()">
										</div>
										<div id="div2" style="display:on"></div>
										<div class="form-group">
											<button type="submit"  id="submit1" class="btn btn-info">提交数据</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
	<!-- Javascript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
	
	<script>
	$("#submit1").attr("disabled", "true");
	</script>
	
	</body>
</html>