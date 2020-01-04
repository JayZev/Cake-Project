<%@page import="com.bean.User"%>
<%@page import="com.service.impl.ImplCarService"%>
<%@page import="com.bean.CartList"%>
<%@page import="java.util.List"%>
<%@page import="com.service.InfCarService"%>
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
    	var car_id = $(d).parent().parent().find("input").eq(1).val();
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
    </script>
</head>
<body>
	<%
		//int u_id = 1;
	
		User user = (User)session.getAttribute("userInfo");
		int u_id = user.getU_id();
		
		InfCarService carService = new ImplCarService();
		List<CartList> list = carService.selectCarByUId(u_id);
	%>
	<div class="table-wrapper-responsive">
           <table summary="Shopping cart">
             <tr>
               <th class="goods-page-ref-no"><input type="checkbox" checked id="selectAll">全选</th>
               <th class="goods-page-image">蛋糕图片</th>
               <th class="goods-page-description">蛋糕名称</th>
               <th class="goods-page-quantity">数量</th>
               <th class="goods-page-price">单价</th>
               <th class="goods-page-total" colspan="2">总价</th>
             </tr>
             
             <c:forEach var="cartList" items="<%= list %>">
              <tr>
                <td class="goods-page-ref-no">
                  	<input type="checkbox" class="mybox" checked><input type="hidden" value="${cartList.car_id }" >
                </td>
                <td class="goods-page-image">
                  	<img src="../${cartList.c_image }" class="img-responsive" alt="Responsive image">
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
                 <em>总金额</em>
                 <strong class="price">¥ <c:out value="${total }"></c:out></strong>
               </li>
             </ul>
           </div>
</body>
</html>