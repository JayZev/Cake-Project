<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>后台首页</title>
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
	<!-- 首页 -->
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
					<a class="btn btn-success update-pro" onclick="location.href='../login.jsp'"_ title="Upgrade to Pro" target="_blank"> <span>退出后台管理</span></a>
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
						<li><a href="index.jsp" class="active"><i class="lnr lnr-home"></i> <span>后台首页</span></a></li>
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
						<li><a href="Setting.jsp" class=""><i class="lnr lnr-cog"></i> <span>设置</span></a></li>
					</ul>
				</nav>
			</div>
		</div>
		<style type="text/css">img{border:0;}
		li{list-style:none;}

		.user_callback #user_pic{position:relative;overflow:hidden;height:450px;width:1200px;z-index:2;margin:0 auto;}
		.user_callback #user_pic ul{width:990px;height:285px;position:relative;top:20px;left:105px;}
		.user_callback #user_pic ul li{position:absolute;}
		.user_callback #user_pic ul img{position:relative;top:0;left:0;}

		.user_callback #user_pic ul .user_pic1{top:-285px;left:-231px;z-index:0;}
		.user_callback #user_pic ul .user_pic2{top:-23px;left: -99.5px;z-index:2;}
		.user_callback #user_pic ul .user_pic3{top: 66px;left: 68px;z-index:3;}
		.user_callback #user_pic ul .user_pic4{top:110px;left:247.5px;z-index:4;}
		.user_callback #user_pic ul .user_pic5{top:110px;left:495px;z-index:3;}
		.user_callback #user_pic ul .user_pic6{top:66px;left:695.5px;z-index:2;}
		.user_callback #user_pic ul .user_pic7{top:-23px;left:852px;z-index:1;}
		.user_callback #user_pic ul .user_pic8{top:-285px;left:1000px;z-index:0;}

		.user_callback #user_pic ul .user_pic1 a{width:216.5px;height:248px;}
		.user_callback #user_pic ul .user_pic2 a{width:225.5px;height:259px;}
		.user_callback #user_pic ul .user_pic3 a{width:247.5px;height:285px;}
		.user_callback #user_pic ul .user_pic4 a{width:247.5px;height:285px;}
		.user_callback #user_pic ul .user_pic5 a{width:247.5px;height:285px;}
		.user_callback #user_pic ul .user_pic6 a{width:247.5px;height:285px;}
		.user_callback #user_pic ul .user_pic7 a{width:225.5px;height:259px;}
		.user_callback #user_pic ul .user_pic8 a{width:216.5px;height:248px;}


		.user_callback #user_pic ul li:hover{background: #ececee;}

		.user_callback #user_pic ul li.user_pic1{opacity:0.2;filter:alpha(opacity:20);}
		.user_callback #user_pic ul li.user_pic2{opacity:0.6;filter:alpha(opacity:60);}
		.user_callback #user_pic ul li.user_pic3{opacity:0.8;filter:alpha(opacity:80);}
		.user_callback #user_pic ul li.user_pic4{opacity:1;filter:alpha(opacity:100);}
		.user_callback #user_pic ul li.user_pic5{opacity:1;filter:alpha(opacity:100);}
		.user_callback #user_pic ul li.user_pic6{opacity:0.8;filter:alpha(opacity:80);}
		.user_callback #user_pic ul li.user_pic7{opacity:0.6;filter:alpha(opacity:60);}
		.user_callback #user_pic ul li.user_pic8{opacity:0.2;filter:alpha(opacity:20);}

		.user_callback #user_pic ul li.user_pic1 img{width:216.5px;height:248px;}
		.user_callback #user_pic ul li.user_pic2 img{width:225.5px;height:259px;}
		.user_callback #user_pic ul li.user_pic3 img{width:230.5px;height:264px;}
		.user_callback #user_pic ul li.user_pic4 img{width:247.5px;height:285px;}
		.user_callback #user_pic ul li.user_pic5 img{width:247.5px;height:285px;}
		.user_callback #user_pic ul li.user_pic6 img{width:230.5px;height:264px;}
		.user_callback #user_pic ul li.user_pic7 img{width:225.5px;height:259px;}
		.user_callback #user_pic ul li.user_pic8 img{width:216.5px;height:248px;}

		.user_callback #user_pic span{display:inline-block;*display:inline;*zoom:1;width:80px;height:80px;position:absolute;top:160px;z-index:30;cursor:pointer;opacity:0.7;filter:alpha(opacity=70);}
		.user_callback #user_pic:hover span{opacity:1;filter:alpha(opacity=100);}
		.user_callback #user_pic span img{width:80px;height:80px;display:block;}
		.user_callback{background: #a1a8a9;overflow:hidden;}</style>
		<!-- 内容 -->
		<div class="main">
			<div class="main-content">
				<div class="container-fluid">
					<div class="panel panel-headline">
						<div class="panel-body">
							<div class="row">
								<div class="user_callback">
									<div class="user_pic" id="user_pic">
										<span class="prev"></span>   <span class="next"></span>
										<ul id="user_call">
											<li class="user_pic1">
												<a href="#"> <img src="imgs/1.jpg" alt="1" width="248" height="285" /></a>
											</li>
											<li class="user_pic2">
												<a href="#"> <img src="imgs/2.jpg" alt="2" width="247" height="285" /></a>
											</li>
											<li class="user_pic3">
												<a href="#"> <img src="imgs/3.jpg" alt="3" width="248" height="285" /></a>
											</li>
											<li class="user_pic4">
												<a href="#"> <img src="imgs/4.jpg" alt="4" width="247" height="285" /></a>
											</li>
											<li class="user_pic5">
												<a href="#"> <img src="imgs/5.jpg" alt="5" width="247" height="285" /></a>
											</li>
											<li class="user_pic6">
												<a href="#"> <img src="imgs/6.jpg" alt="6" width="247" height="285" /></a>
											</li>
											<li class="user_pic7">
												<a href="#"> <img src="imgs/7.jpg" alt="7" width="247" height="285" /></a>
											</li>
											<li class="user_pic8">
												<a href="#"> <img src="imgs/8.jpg" alt="8" width="247" height="285" /></a>
											</li>
										</ul>
									</div>
								</div>
									</div>
								</div>
							</div>
						</div>
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
	<script type="text/javascript">function arcSlip()
	{
		var oPic=document.getElementById('user_pic');
		var oPrev=getByClass(oPic,'prev')[0];
		var oNext=getByClass(oPic,'next')[0];

		var aLi=oPic.getElementsByTagName('li');

		var arr=[];

		for(var i=0;i<aLi.length;i++)
		{
			var oImg=aLi[i].getElementsByTagName('img')[0];

			arr.push([parseInt(getStyle(aLi[i],'left')),parseInt(getStyle(aLi[i],'top')),
				getStyle(aLi[i],'zIndex'),oImg.width,parseFloat(getStyle(aLi[i],'opacity')*100)]);
		}


		oPrev.onclick=function moveTP()
		{
			arr.push(arr[0]);
			arr.shift();
			for(var i=0;i<aLi.length;i++)
			{
				var oImg=aLi[i].getElementsByTagName('img')[0];

				aLi[i].style.zIndex=arr[i][2];
				startMove(aLi[i],{left:arr[i][0],top:arr[i][1],opacity:arr[i][4]});
				startMove(oImg,{width:arr[i][3]});
			}

		}

		oNext.onclick=function moveTN()
		{
			arr.unshift(arr[arr.length-1]);
			arr.pop();
			for(var i=0;i<aLi.length;i++)
			{
				var oImg=aLi[i].getElementsByTagName('img')[0];

				aLi[i].style.zIndex=arr[i][2];
				startMove(aLi[i],{left:arr[i][0],top:arr[i][1],opacity:arr[i][4]});
				startMove(oImg,{width:arr[i][3]});
			}
		}
		var moveTime = setInterval (function(){

			oNext.click();

		},1000);
		$('#user_pic').hover(function(){
			;;
			clearInterval(moveTime);
		},function(){
			moveTime=setInterval(function(){
				oNext.click();
			},1000);
		});

		function getStyle(obj,name)
		{
			if(obj.currentStyle){ return obj.currentStyle[name]; }
			else{ return getComputedStyle(obj,false)[name]; }
		}
	}
	function getByClass(oParent,sClass)
	{
		var aResult=[];
		var aEle=oParent.getElementsByTagName('*');

		for(var i=0;i<aEle.length;i++)
		{
			if(aEle[i].className==sClass)
			{
				aResult.push(aEle[i]);
			}
		}
		return aResult;
	}
	function getStyle(obj,name)
	{
		if(obj.currentStyle)
		{
			return obj.currentStyle[name];
		}

		else
		{
			return getComputedStyle(obj,false)[name];
		}
	}
	function startMove(obj,json,fnEnd)
	{
		clearInterval(obj.timer);
		obj.timer=setInterval(function()
		{
			var bStop=true;
			for(var attr in json)
			{
				var cur=0;

				if(attr=='opacity')
				{
					cur=Math.round(parseFloat(getStyle(obj,attr))*100);
				}
				else
				{
					cur=parseInt(getStyle(obj,attr));
				}

				var  speed=(json[attr]-cur)/6;
				speed=speed>0?Math.ceil(speed):Math.floor(speed);

				if(cur!=json[attr]) bStop=false;

				if(attr=='opacity')
				{
					obj.style.filter='alpha(opacity:'+(cur+speed)+')';
					obj.style.opacity=(cur+speed)/100;
				}
				else
				{
					obj.style[attr]=cur+speed+'px';
				}
			}

			if(bStop)
			{
				clearInterval(obj.timer);
				if(fnEnd) fnEnd();
			}

		},30)


	}
	arcSlip();
	</script>
	<div style="text-align:center;clear:both">
		<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
		<script src="/follow.js" type="text/javascript"></script>
	<!-- Javascript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="assets/vendor/chartist/js/chartist.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
	<script>
	$(function() {
		var data, options;

		// headline charts
		data = {
			labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
			series: [
				[23, 29, 24, 40, 25, 24, 35],
				[14, 25, 18, 34, 29, 38, 44],
			]
		};

		options = {
			height: 300,
			showArea: true,
			showLine: false,
			showPoint: false,
			fullWidth: true,
			axisX: {
				showGrid: false
			},
			lineSmooth: false,
		};

		new Chartist.Line('#headline-chart', data, options);


		// visits trend charts
		data = {
			labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
			series: [{
				name: 'series-real',
				data: [200, 380, 350, 320, 410, 450, 570, 400, 555, 620, 750, 900],
			}, {
				name: 'series-projection',
				data: [240, 350, 360, 380, 400, 450, 480, 523, 555, 600, 700, 800],
			}]
		};

		options = {
			fullWidth: true,
			lineSmooth: false,
			height: "270px",
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
				left: 20,
				right: 20
			}
		};

		new Chartist.Line('#visits-trends-chart', data, options);


		// visits chart
		data = {
			labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
			series: [
				[6384, 6342, 5437, 2764, 3958, 5068, 7654]
			]
		};

		options = {
			height: 300,
			axisX: {
				showGrid: false
			},
		};

		new Chartist.Bar('#visits-chart', data, options);


		// real-time pie chart
		var sysLoad = $('#system-load').easyPieChart({
			size: 130,
			barColor: function(percent) {
				return "rgb(" + Math.round(200 * percent / 100) + ", " + Math.round(200 * (1.1 - percent / 100)) + ", 0)";
			},
			trackColor: 'rgba(245, 245, 245, 0.8)',
			scaleColor: false,
			lineWidth: 5,
			lineCap: "square",
			animate: 800
		});

		var updateInterval = 3000; // in milliseconds

		setInterval(function() {
			var randomVal;
			randomVal = getRandomInt(0, 100);

			sysLoad.data('easyPieChart').update(randomVal);
			sysLoad.find('.percent').text(randomVal);
		}, updateInterval);

		function getRandomInt(min, max) {
			return Math.floor(Math.random() * (max - min + 1)) + min;
		}

	});
	</script>
</body>
</html>