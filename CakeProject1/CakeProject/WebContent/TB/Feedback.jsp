<%@page import="com.bean.Feedback2"%>
<%@page import="com.bean.Feedback"%>
<%@page import="java.util.List"%>
<%@page import="com.service.impl.FeedbackService"%>
<%@page import="com.service.IFeedbackService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户反馈</title>
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
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="index.jsp"><img src="assets/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
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
						<li><a href="index.html" class=""><i class="lnr lnr-home"></i> <span>后台首页</span></a></li>
						<li><a href="Statistics.jsp" class=""><i class="lnr lnr-chart-bars"></i> <span>统计报表</span></a></li>
						<li><a href="#subPages1" data-toggle="collapse" class="collapsed"><i class="lnr lnr-dice"></i> <span>订单信息</span><i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages1" class="collapse">
								<ul class="nav">
									<li><a href="Sell.jsp" class="">历史订单信息</a></li>
									<li><a href="Sell2.jsp" class="">待处理订单信息</a></li>
								</ul>
							</div>	
						</li>
						<li><a href="Feedback.jsp" class="active"><i class="lnr lnr-text-format"></i> <span>用户反馈</span></a></li>
						<li>
							<a href="#subPages" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>商品管理</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="nav">
									<li><a href="AddCake.jsp" class="">上架商品</a></li>
									<li><a href="page-login.html" class="">修改商品</a></li>
									<li><a href="page-lockscreen.html" class="">下架商品</a></li>
								</ul>
							</div>
						</li>
						<li><a href="Setting.jsp" class=""><i class="lnr lnr-cog"></i> <span>设置</span></a></li>
					</ul>
				</nav>
			</div>
		</div>

		<!-- 反馈信息 -->
		<div class="main">
			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">反馈信息</h3>
					<div class="row">
						<div class="col-md-12">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">所有反馈</h3>
								</div>
								<div class="panel-body" style="width: 100%" >
									<%
									Feedback2 feedback2 = new Feedback2();
									%>
									<%!int number;%>
									<table class="table table-striped"  >
									<%		
											int num = 10;
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
											if (nextid > feedback2.getPageNum()) {
												nextid = feedback2.getPageNum();
											}
											int k = 0;
											if(pageid=="1"){
												k = 1;
											} else {
												k = (Integer.parseInt(pageid)-1)*5+1;
											}
											
											List<Feedback> list = feedback2.getDataByPageNumber(pid);
out.println("<tr><td style='vertical-align: middle'>反馈编号</td><td style='vertical-align: middle'>反馈用户姓名</td>"+
			"<td style='vertical-align: middle'>反馈用户邮箱</td><td style='vertical-align: middle'>反馈用户电话</td>"+					
			"<td style='vertical-align: middle'>反馈内容</td><td style='vertical-align: middle'>反馈时间</td><td style='vertical-align: middle'>操作</td></tr>");
											for (int i = 0; i < list.size(); i++) {
												
												Feedback fk = list.get(i);
												out.println("<tr>");
												out.println("<td style='vertical-align: middle'>"+(index++)+"</td>");
												out.println("<td style='vertical-align: middle'>"+fk.getF_name()+"</td>");
												out.println("<td style='vertical-align: middle'>"+fk.getF_email()+"</td>");
												out.println("<td style='vertical-align: middle'>"+fk.getF_telephone()+"</td>");
												out.println("<td style='vertical-align: middle'>"+fk.getF_content()+"</td>");
												out.println("<td style='vertical-align: middle'>"+fk.getF_time()+"</td>");
												out.println("<td style='vertical-align: middle'><button  class='btn btn-info' onClick='javascript:window.location.href=\"Feedback2.jsp?id="+fk.getF_id()+"\"'>查看</button></td>");
												out.print("</tr>");
											}
										%>
									</table>
									<p>
										<button type="button" class="btn btn-default" onclick="location.href='Feedback.jsp?pageid=<%=previd%>'">上一页</button>
											<%
												for (int i = 1; i < feedback2.getPageNum()+1; i++) {
											%>
												
												<button type="button" class="btn btn-default" onclick="location.href='Feedback.jsp?pageid=<%=i %>'"><%=i %></button>
											<%
												}
											%>
								
											
											
										<button type="button" class="btn btn-default" onclick="location.href='Feedback.jsp?pageid=<%=nextid%>'">下一页</button>
										</p>
								</div>
							</div>
						</div>	
	<!-- Javascript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
</body>
</html>