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
				<a href="index.html"><img src="assets/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				<div class="navbar-btn navbar-btn-right">
					<a class="btn btn-success update-pro" href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>退出后台管理</span></a>
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
							<a href="#subPages" data-toggle="collapse" class="active"><i class="lnr lnr-file-empty"></i> <span>商品管理</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse in">
								<ul class="nav">
									<li><a href="AddCake.jsp" class="active">新增商品</a></li>
									<li><a href="AmendCake.jsp" class="">修改商品</a></li>
									<li><a href="RemoveCake.jsp" class="">删除商品</a></li>
								</ul>
							</div>
						</li>
						<li><a href="Setting.jsp" class=""><i class="lnr lnr-cog"></i> <span>设置</span></a></li>
					</ul>
				</nav>
			</div>
		</div>
		
		<!-- 上架商品 -->
		<div class="main">
			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">新增商品</h3>
							<div class="col-sm-4">
								<button  class="btn btn-info" onclick="location.href='AddCake2.jsp'">新增商品</button>
							</div>	
					<div class="row">
						<div class="col-md-12">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">所有商品</h3>
								</div>
								<div class="panel-body" style="width: 100%" >
									<%
										Cake2 cake2 = new Cake2();
									%>
									<%!int number;%>
									<table class="table table-striped"  >
										<%	
											int num = 4;
											String pageid = request.getParameter("pageid");
											if (pageid == null) {
												pageid = "1";
											}
										
											int pid = Integer.parseInt(pageid);//显示第pid页
											int index = (pid-1)*num+1;
											
											int previd = pid - 1;
											int nextid = pid + 1;
											if (previd < 1) {
												previd = 1;
											}
											if (nextid > cake2.getPageNum()) {
												nextid = cake2.getPageNum();
											}
											int k = 0;
											if(pageid=="1"){
												k = 1;
											} else {
												k = (Integer.parseInt(pageid)-1)*5+1;
											}
											
											List<Cake> list = cake2.getDataByPageNumber(pid);
out.println("<tr><td style='vertical-align: middle'>蛋糕编号</td><td style='vertical-align: middle'>蛋糕名称</td>"+
			"<td style='vertical-align: middle'>蛋糕图片</td><td style='vertical-align: middle'>蛋糕价格</td>"+
			"<td style='vertical-align: middle'>蛋糕类别</td><td style='vertical-align: middle'>蛋糕重量</td>"+
			"<td style='vertical-align: middle'>蛋糕口味</td><td style='vertical-align: middle'>蛋糕颜色</td>"+
			"<td style='vertical-align: middle'>蛋糕状态</td></tr>");
											for (int i = 0; i < list.size(); i++) {
												
												Cake ck = list.get(i);
												out.println("<tr>");
												out.println("<td style='vertical-align: middle'>"+(index++)+"</td>");
												out.println("<td style='vertical-align: middle'>"+ck.getC_name()+"</td>");
												out.println("<td ><img src='../"+ck.getC_image()+"' width='100px'></td>");
												out.println("<td style='vertical-align: middle'>¥"+ck.getC_price()+"</td>");
												out.println("<td style='vertical-align: middle'>"+ck.getC_type()+"</td>");
												out.println("<td style='vertical-align: middle'>"+ck.getC_weight()+"Kg</td>");
												out.println("<td style='vertical-align: middle'>"+ck.getC_taste()+"</td>");
												out.println("<td style='vertical-align: middle'>"+ck.getC_color()+"</td>");
												if (ck.getC_state().equals("上架")) {
													out.println("<td style='vertical-align: middle'><button  class='btn btn-warning' onClick='javascript:window.location.href=\"../SoldOutCakeServlet?id="+ck.getC_id()+"&state=下架\"'>下架</button></td>");
												} else {
													out.println("<td style='vertical-align: middle'><button  class='btn btn-warning' onClick='javascript:window.location.href=\"../SoldOutCakeServlet?id="+ck.getC_id()+"&state=上架\"'>上架</button></td>");
												}
												
												out.print("</tr>");
											}
										%>
									</table>
									<p>
										<button type="button" class="btn btn-default" onclick="location.href='AddCake.jsp?pageid=<%=previd%>'">上一页</button>
											<%
												for (int i = 1; i < cake2.getPageNum()+1; i++) {
											%>
												
												<button type="button" class="btn btn-default" onclick="location.href='AddCake.jsp?pageid=<%=i %>'"><%=i %></button>
											<%
												}
											%>
								
										<button type="button" class="btn btn-default" onclick="location.href='AddCake.jsp?pageid=<%=nextid%>'">下一页</button>
										</p>
								</div>
							</div>
						</div>
						<footer class="sticky-footer"  style="background-color: #a1a8a9;width: 100%">
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