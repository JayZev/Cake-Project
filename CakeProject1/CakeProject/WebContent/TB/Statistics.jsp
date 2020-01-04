<%@page import="com.bean.Sell"%>
<%@page import="java.util.List"%>
<%@page import="com.service.impl.SellService"%>
<%@page import="com.service.ISellService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>统计报表</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/vendor/linearicons/style.css">
	<link rel="stylesheet" href="assets/vendor/chartist/css/chartist-custom.css">
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
					<a class="btn btn-success update-pro" href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"> <span>退出后台管理</span></a>
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
						<li><a href="Statistics.jsp" class="active"><i class="lnr lnr-chart-bars"></i> <span>统计报表</span></a></li>
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
						<li><a href="Setting.jsp" class=""><i class="lnr lnr-cog"></i> <span>设置</span></a></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- 统计报表 -->
		<% 
		  ISellService sservice = null;
		  sservice = new SellService();
		  List<Sell> sell5  = sservice.moneySellInfo("2019-12-25 00:00:00", "2019-12-31 23:59:59");
			double[] value5=new double[7];
			int b =0;
			 for(Sell sl5 : sell5){ 	 
			 value5[b] =sl5.getS_money();
		 	 b++; 
		}
		%>
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">统计报表</h3>
					<div class="row">
						<div class="col-md-6">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">12月份最后一周的销量统计（25-31）</h3>
								</div>
								<div class="panel-body">
									<div id="demo-line-chart" class="ct-chart"></div>
								</div>
							</div>
						</div>
						<% 
							List<Sell> sell4  = sservice.moneySellInfo("2019-12-01 00:00:00", "2019-12-15 23:59:59");
							double[] value4=new double[15];
							int a =0;
							 for(Sell sl4 : sell4){ 	 
							 value4[a] =sl4.getS_money();
						 	 a++; 
							 }
						%>
						<div class="col-md-6">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">12月份半月销售统计</h3>
								</div>
								<div class="panel-body">
									<div id="demo-line-chart2" class="ct-chart"></div>
								</div>
							</div>
						</div>
					</div>
					<% 
					List<Sell> sell3  = sservice.annualSales(2019);
					double[] value3=new double[12];
					int k =0;
					 for(Sell sl3 : sell3){ 	 
					 value3[k] =sl3.getS_money();
				 	 k++; 
					 }
					%>
					<div class="row">
						<div class="col-md-6">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">2019年销量统计</h3>
								</div>
								<div class="panel-body">
									<div id="demo-bar-chart" class="ct-chart"></div>
								</div>
							</div>
						</div>
						<% 
							 List<Sell> sell  = sservice.moneySellInfo("2019-12-01 00:00:00", "2019-12-31 23:59:59");
							 double[] value=new double[31];
							 int i =0;
							 for(Sell sl : sell){ 	 
							 value[i] =sl.getS_money();
						 	 i++; 
							 }
						%>
						<% 
							List<Sell> sell2  = sservice.moneySellInfo("2019-11-01 00:00:00", "2019-11-30 23:59:59");
							double[] value2=new double[30];
							int j =0;
							for(Sell sl2 : sell2){ 	 
								 value2[j] =sl2.getS_money();
							j++; 
							}
						%>
						<div class="col-md-6">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">12月份销量统计</h3>
								</div>
								<div class="panel-body">
									<div id="multiple-chart" class="ct-chart"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>	
	<!-- 脚本部分-->	
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/vendor/chartist/js/chartist.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
	<script>
	$(function() {
		// 1图
		var options;

		var data = {
			labels: ['星期三', '星期四', '星期五', '星期六', '星期日', '星期一', '星期二'],
			series: [
				[<%=value4[0] %>, <%=value4[1] %>, <%=value4[2] %>, <%=value4[3] %>, <%=value4[4] %>, <%=value4[5] %>, <%=value4[6] %>],
			]
		};

		options = {
			height: "300px",
			showPoint: true,
			axisX: {
				showGrid: false
			},
			lineSmooth: false,
		};

		new Chartist.Line('#demo-line-chart', data, options);

		// 2图
		var options2;
		var data2 = {
			labels: ['1', '2', '3', '4','5','6','7','8','9','10','11', '12', '13', '14','15'],
			series: [
				[<%=value4[0] %>, <%=value4[1] %>, <%=value4[2] %>, <%=value4[3] %>, <%=value4[4] %>, <%=value4[5] %>, 
				<%=value4[6] %>,<%=value4[7] %>, <%=value4[8] %>, <%=value4[9] %>, <%=value4[10] %>, <%=value4[11] %>,
				<%=value4[12] %>,<%=value4[13] %>, <%=value4[14] %>],
			]
		};
		options2 = {
				height: "300px",
				showPoint: true,
				axisX: {
					showGrid: false
				},
				lineSmooth: false,
			};

	   new Chartist.Line('#demo-line-chart2', data2, options2);
		
	   // 3图
		var options3;
		var data3 = {
			labels: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月','十二月'],
			series: [
				[<%=value3[0] %>, <%=value3[1] %>, <%=value3[2] %>, <%=value3[3] %>, <%=value3[4] %>, <%=value3[5] %>, 
				 <%=value3[6] %>,<%=value3[7] %>, <%=value3[8] %>, <%=value3[9] %>, <%=value3[10] %>, <%=value3[11] %>],
			]
		};
		
		options3 = {
				height: "300px",
				axisX: {
					showGrid: false
				},
				lineSmooth: false,
			};

			new Chartist.Bar('#demo-bar-chart', data3, options3);


		// 4图
		var data = {
			labels: ['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19',
				    '20','21','22','23','24','25','26','27','28','29','30','31'],
			series: [{
				name: 'series-real',
				data: [<%=value[0]%>, <%=value[1]%>, <%=value[2]%>, <%=value[3]%>, <%=value[4]%>, <%=value[5]%>, 
					   <%=value[6]%>,<%=value[7]%>, <%=value[8]%>, <%=value[9]%>, <%=value[10]%>, <%=value[11]%>,
					   <%=value[12]%>,<%=value[13]%>, <%=value[14]%>, <%=value[15]%>, <%=value[16]%>, <%=value[17]%>,
					   <%=value[18]%>,<%=value[19]%>, <%=value[20]%>, <%=value[21]%>, <%=value[22]%>, <%=value[23]%>,
					   <%=value[24]%>,<%=value[25]%>, <%=value[26]%>, <%=value[27]%>, <%=value[28]%>, <%=value[29]%>,
					   <%=value[30]%>],
			}, {
				name: 'series-projection',
				data: [<%=value2[0]%>, <%=value2[1]%>, <%=value2[2]%>, <%=value2[3]%>, <%=value2[4]%>, <%=value2[5]%>, 
					   <%=value2[6]%>,<%=value2[7]%>, <%=value2[8]%>, <%=value2[9]%>, <%=value2[10]%>, <%=value2[11]%>,
					   <%=value2[12]%>,<%=value2[13]%>, <%=value2[14]%>, <%=value2[15]%>, <%=value2[16]%>, <%=value2[17]%>,
					   <%=value2[18]%>,<%=value2[19]%>, <%=value2[20]%>, <%=value2[21]%>, <%=value2[22]%>, <%=value2[23]%>,
					   <%=value2[24]%>,<%=value2[25]%>, <%=value2[26]%>, <%=value2[27]%>, <%=value2[28]%>, <%=value2[29]%>,
					  ],
			}]
		};

		var options = {
			fullWidth: true,
			lineSmooth: false,
			height: "300px",
			low: 0,
			high: 'auto',
			series: {
				'series-projection': {
					showArea: true,
					showPoint: false,
					showLine: false
				},
			},
			axisX: {
				showGrid: false,

			},
			axisY: {
				showGrid: false,
				onlyInteger: true,
				offset: 0,
			},
			chartPadding: {
				left: 50,
				right: 50
			}
		};

		new Chartist.Line('#multiple-chart', data, options);

	});
	</script>
</body>
</html>