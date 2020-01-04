<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.bean.CheckoutList"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>付款</title>
</head>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.alipay.config.*"%>
<%@ page import="com.alipay.api.*"%>
<%@ page import="com.alipay.api.request.*"%>
<%
	//获得初始化的AlipayClient
	AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
	
	//设置请求参数
	AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
	alipayRequest.setReturnUrl(AlipayConfig.return_url);
	alipayRequest.setNotifyUrl(AlipayConfig.notify_url);
	
// 	private String detail;
// 	private String address;
// 	private String name;
// 	private String sex;
// 	private String phone;
// 	private String time;
// 	private float money;
// 	private float freight;
	String detail = new String(request.getParameter("detail").getBytes("ISO-8859-1"),"UTF-8");
	String address = new String(request.getParameter("address").getBytes("ISO-8859-1"),"UTF-8");
	String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
	String sex = new String(request.getParameter("sex").getBytes("ISO-8859-1"),"UTF-8");
	String phone = new String(request.getParameter("phone").getBytes("ISO-8859-1"),"UTF-8");
	String time = new String(request.getParameter("time").getBytes("ISO-8859-1"),"UTF-8");
	String money = new String(request.getParameter("money").getBytes("ISO-8859-1"),"UTF-8");
	String freight = new String(request.getParameter("freight").getBytes("ISO-8859-1"),"UTF-8");
	
	CheckoutList ckList = new CheckoutList(detail, address, name, sex,  phone, time, Float.parseFloat(money), Float.parseFloat(freight));
	session.setAttribute("checkoutInfo", ckList);
	
	//商户订单号，商户网站订单系统中唯一订单号，必填
	String out_trade_no = new String(request.getParameter("WIDout_trade_no").getBytes("ISO-8859-1"),"UTF-8");
	//付款金额，必填
	String total_amount = new String(request.getParameter("money").getBytes("ISO-8859-1"),"UTF-8");
	//订单名称，必填
	String subject = "Cake's Dream";
	//商品描述，可空
	String body = "";
	
	
	
	
	
	
// 	//商户订单号，商户网站订单系统中唯一订单号，必填
// 	String out_trade_no = new String(request.getParameter("WIDout_trade_no").getBytes("ISO-8859-1"),"UTF-8");
// 	//付款金额，必填
// 	String total_amount = new String(request.getParameter("WIDtotal_amount").getBytes("ISO-8859-1"),"UTF-8");
// 	//订单名称，必填
// 	String subject = new String(request.getParameter("WIDsubject").getBytes("ISO-8859-1"),"UTF-8");
// 	//商品描述，可空
// 	String body = new String(request.getParameter("WIDbody").getBytes("ISO-8859-1"),"UTF-8");
	
	
	
	
	alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
			+ "\"total_amount\":\""+ total_amount +"\"," 
			+ "\"subject\":\""+ subject +"\"," 
			+ "\"body\":\""+ body +"\"," 
			+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
	
	//若想给BizContent增加其他可选请求参数，以增加自定义超时时间参数timeout_express来举例说明
	//alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
	//		+ "\"total_amount\":\""+ total_amount +"\"," 
	//		+ "\"subject\":\""+ subject +"\"," 
	//		+ "\"body\":\""+ body +"\"," 
	//		+ "\"timeout_express\":\"10m\"," 
	//		+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
	//请求参数可查阅【电脑网站支付的API文档-alipay.trade.page.pay-请求参数】章节
	
	//请求
	String result = alipayClient.pageExecute(alipayRequest).getBody();
	
	//输出
	out.println(result);
%>
<body>
</body>
</html>