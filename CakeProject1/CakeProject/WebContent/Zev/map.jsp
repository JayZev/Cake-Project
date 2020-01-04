<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
        body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=3.0&ak=1iBVUZmvADDzpaI7StGH8Yx4TSiv1sRl"></script>
    <title>设置驾车路线途经点</title>
    
    
    <script src="../static/Zev/assets/javascripts/jquery.js"></script>
</head>
<body>
<div id="allmap"></div>
</body>
</html>
<script type="text/javascript">
	var map = new BMap.Map("allmap");
	var p2 = new BMap.Point(113.090025,28.18606);
	map.centerAndZoom(p2,12);
	map.enableScrollWheelZoom(true);
	
	var p1;
	
	var lng = ${sessionScope.lng };
	var lat = ${sessionScope.lat };
	if (lng == "" || lng == null) {
		var geolocation = new BMap.Geolocation();
		//开启SDK辅助定位，仅当使用环境为移动web混合开发，且开启了定位sdk辅助定位功能后生效
		geolocation.enableSDKLocation();
		geolocation.getCurrentPosition(function(r){
			p1 = r.point;
			console.log(p1);
			var driving = new BMap.TransitRoute(map, {renderOptions:{map: map, autoViewport: true}});
		    driving.search(p1, p2);
			$.ajax({
				url:"../MapServlet",
				type:"post",
				data:{"lng":p1.lng,"lat":p1.lat},
				success: function(data){
					
				}
			});
		});
	} else {
		p1 = new BMap.Point(lng, lat);
		var driving = new BMap.TransitRoute(map, {renderOptions:{map: map, autoViewport: true}});
	    driving.search(p1, p2);
	}
	
	
	
	
</script>
