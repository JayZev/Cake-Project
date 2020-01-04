<%@page import="com.bean.Cake"%>
<%@page import="java.util.List"%>
<%@page import="com.bean.Cake2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>上架商品页面</title>
	<meta charset="utf-8">
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
</head>
<body>
	<div id="wrapper">
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="index.html"><img src="assets/img/logo-dark.png"
					alt="Klorofil Logo" class="img-responsive logo"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth">
						<i class="lnr lnr-arrow-left-circle"></i>
					</button>
				</div>
				<div class="navbar-btn navbar-btn-right">
					<a class="btn btn-success update-pro"
						href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro"
						title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i>
						<span>退出后台管理</span></a>
				</div>
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a href="#"
							class="dropdown-toggle icon-menu" data-toggle="dropdown"> <i
								class="lnr lnr-alarm"></i> <span class="badge bg-danger">5</span>
						</a>
							<ul class="dropdown-menu notifications">
								<li><a href="#" class="notification-item"><span
										class="dot bg-warning"></span>消息提示1</a></li>
								<li><a href="#" class="notification-item"><span
										class="dot bg-danger"></span>消息提示2</a></li>
								<li><a href="#" class="notification-item"><span
										class="dot bg-success"></span>消息提示3</a></li>
								<li><a href="#" class="notification-item"><span
										class="dot bg-warning"></span>消息提示4</a></li>
								<li><a href="#" class="notification-item"><span
										class="dot bg-success"></span>消息提示5</a></li>
								<li><a href="#" class="more">更多消息</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><img src="img/Starry.jpg"
								class="img-circle" alt="Avatar"> <span>Admin</span> <i
								class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="lnr lnr-user"></i> <span>基本信息</span></a></li>
								<li><a href="#"><i class="lnr lnr-envelope"></i> <span>个人邮箱</span></a></li>
								<li><a href="#"><i class="lnr lnr-cog"></i> <span>设置</span></a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</nav>
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="index.jsp" class=""><i class="lnr lnr-home"></i>
								<span>后台首页</span></a></li>
						<li><a href="Statistics.jsp" class=""><i
								class="lnr lnr-chart-bars"></i> <span>统计报表</span></a></li>
						<li><a href="#subPages1" data-toggle="collapse" class="collapsed"><i class="lnr lnr-dice"></i> <span>订单信息</span><i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages1" class="collapse">
								<ul class="nav">
									<li><a href="Sell.jsp" class="">历史订单信息</a></li>
									<li><a href="Sell2.jsp" class="">待处理订单信息</a></li>
								</ul>
							</div>	
						</li>
						<li><a href="Feedback.jsp" class=""><i
								class="lnr lnr-text-format"></i> <span>用户反馈</span></a></li>
						<li><a href="#subPages" data-toggle="collapse" class="active"><i
								class="lnr lnr-file-empty"></i> <span>商品管理</span> <i
								class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse in">
								<ul class="nav">
									<li><a href="AddCake.jsp" class="active">新增商品</a></li>
									<li><a href="AmendCake.jsp" class="">修改商品</a></li>
									<li><a href="RemoveCake.jsp" class="">删除商品</a></li>
								</ul>
							</div></li>
						<li><a href="Setting.jsp" class=""><i class="lnr lnr-cog"></i>
								<span>设置</span></a></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- 上架商品 -->
		<div class="main">
			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">新增商品</h3>
					<div class="row">
						<div class="col-md-12">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">新增商品信息</h3>
								</div>
								<div class="panel-body" style="width: 50%;">
								<!-- 上传商品图片 -->
								 	<form action="../AddCakeServlet" enctype="multipart/form-data" method="post"> 
										<div class="form-group">
											<label for="exampleInputName">商品名称：</label> <input
												type="text" class="form-control" name="cakename"
												placeholder="蛋糕名称">
										</div>
										<div class="form-group">
											<label for="exampleInputName">商品价格：</label><input
											type="text" class="form-control" 
											name="cakeprice" placeholder="蛋糕价格/¥">
										</div>
										<div class="form-group">
											<label for="exampleInputName">商品类别：</label> <input
											type="text" class="form-control" 
											name="caketype" placeholder="蛋糕类别">
										</div>
										<div class="form-group">
											<label for="exampleInputName">商品重量：</label> <input
											type="text" class="form-control" 
											name="cakeweight" placeholder="蛋糕重量/KG" >
										</div>
										<div class="form-group">
											<label for="exampleInputName">商品口味：</label> <input
											type="text" class="form-control" 
											name="caketaste" placeholder="蛋糕口味">
										</div>
										<div class="form-group">
											<label for="exampleInputName">商品颜色：</label> <input
											type="text" class="form-control" 
											name="cakecolor" placeholder="蛋糕颜色">
										</div>
										<div class="form-group">
											<label for="exampleInputName">商品介绍 ：</label> <input
											type="text" class="form-control" 
											name="cakeintroduce" placeholder="蛋糕介绍">
										</div>
										<div class="form-group">
											<label for="exampleInputName">商品描述 ：</label> <input
											type="text" class="form-control" 
											name="cdescription" placeholder="蛋糕描述">
										</div>
										<div class="form-group">
											<label for="exampleInputName">商品状态：</label>
												<select class="form-control" name="type">
													<option value="上架">上架</option>
													<option value="下架">下架</option>
												</select>
										</div>
										<div class="form-group">
											<label for="exampleInputFile">商品图片：</label> <input
												type="file"  name="cakeimg" >
										</div>
										<div class="col-sm-4">
											<button type="submit" class="btn btn-success">添加商品信息</button>
										</div>
									</form>
										</div>
								</div>
						</div>

						<footer class="sticky-footer"
							style="background-color: #a1a8a9; width: 100%">
							<div class="container">
								<div class="text-center">
									<small>Salvadors&nbsp;&nbsp;Cakes&nbsp;&nbsp;&nbsp;&nbsp;©&nbsp;&nbsp;2019</small>
								</div>
							</div>
						</footer>
<!-- Javascript -->
<script src="assets/vendor/jquery/jquery.min.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="assets/scripts/klorofil-common.js"></script>						
</body>
</html>