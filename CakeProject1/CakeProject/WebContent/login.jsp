<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0"> 
	<title>登录界面</title>
    <link href="TB/css/default.css" rel="stylesheet" type="text/css" />
	<!--必要样式-->
    <link href="TB/css/styles.css" rel="stylesheet" type="text/css" />
    <link href="TB/css/demo.css" rel="stylesheet" type="text/css" />
    <link href="TB/css/loaders.css" rel="stylesheet" type="text/css" />
</head>

<body>
<form action="ManageServlet" method="post" name="Login">
	<div class='login'>
	  <div class='login_title'>
	    <span>管理员登录</span>
	    <input type="hidden" id="msg" value="${msg }">
	  </div>
	  <div class='login_fields'>
	    <div class='login_fields__user'>
	      <div class='icon'>
	        <img alt="" src='TB/img/user_icon_copy.png'>
	      </div>
	      <input name="m_name" placeholder='Admin' maxlength="16" type='text' autocomplete="off"/>
	        <div class='validation'>
	          <img alt="" src='TB/img/tick.png'>
	        </div>
	    </div>
	    <div class='login_fields__password'>
	      <div class='icon'>
	        <img alt="" src='TB/img/lock_icon_copy.png'>
	      </div>
	      <input name="m_pwd" placeholder='密码' maxlength="16" type='password' autocomplete="off">
	      <div class='validation'>
	        <img alt="" src='TB/img/tick.png'>
	      </div>
	    </div>
	    <div class='login_fields__password'>
	      <div class='icon'>
	        <img alt="" src='TB/img/key.png'>
	      </div>
	      <input name="code" placeholder='验证码' maxlength="4" type='text' name="ValidateNum" autocomplete="off">
	      <div class='validation' style="opacity: 1; right: -5px;top: -3px;">
          <canvas class="J_codeimg" id="myCanvas" onclick="Code()"></canvas>
	      </div>
	    </div>
	    <div class='login_fields__submit'>
	      <input type='button' value='登录'>
	    </div>
	  </div>
	  <div class='success'>
	  </div>
	  <div class='disc'>
	    <span>欢迎登管理员后台系统</span>
	  </div>
	</div>
</form>
    <link href="TB/layui/css/layui.css" rel="stylesheet" type="text/css" />
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="TB/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src='TB/js/stopExecutionOnTimeout.js?t=1'></script>
    <script src="TB/layui/layui.js" type="text/javascript"></script>
    <script src="TB/js/Particleground.js" type="text/javascript"></script>
    <script src="TB/js/Treatment.js" type="text/javascript"></script>
    <script src="TB/js/jquery.mockjax.js" type="text/javascript"></script>
	<script type="text/javascript">
		setTimeout(layui.use('layer', function validate() {
			var msg = document.getElementById("msg");
			if(msg.value == "erroPwd"){
				ErroAlert('密码错误!');
			}else if(msg.value == "null"){
				ErroAlert('您没有登录，请登录后操作。');
			}
		}));
		var canGetCookie = 0;//是否支持存储Cookie 0 不支持 1 支持
		
		var CodeVal = 0;
	    Code();
	    function Code() {
			if(canGetCookie == 1){
				createCode("AdminCode");
				var AdminCode = getCookieValue("AdminCode");
				showCheck(AdminCode);
			}else{
				showCheck(createCode(""));
			}
	    }
	    function showCheck(a) {
			CodeVal = a;
	        var c = document.getElementById("myCanvas");
	        var ctx = c.getContext("2d");
	        ctx.clearRect(0, 0, 1000, 1000);
	        ctx.font = "80px 'Hiragino Sans GB'";
	        ctx.fillStyle = "#E8DFE8";
	        ctx.fillText(a, 0, 100);
	    }
	    $(document).keypress(function (e) {
	        // 回车键事件  
	        if (e.which == 13) {
	            $('input[type="button"]').click();
	        }
	    });
	    //粒子背景特效
	    $('body').particleground({
	        dotColor: '#E8DFE8',
	        lineColor: '#ECE1CF'
	    });
	    $('input[type="text"]').focus(function () {
	        $(this).prev().animate({ 'opacity': '1' }, 200);
	    });
	    $('input[type="text"],input[type="password"]').blur(function () {
	        $(this).prev().animate({ 'opacity': '.5' }, 200);
	    });
	    $('input[name="s_pwd"]').keyup(function () {
	        var Len = $(this).val().length;
	        if (!$(this).val() == '' && Len >= 5) {
	            $(this).next().animate({
	                'opacity': '1',
	                'right': '30'
	            }, 200);
	        } else {
	            $(this).next().animate({
	                'opacity': '0',
	                'right': '20'
	            }, 200);
	        }
	    });
	    layui.use('layer', function () {
	        //非空验证
	        $('input[type="button"]').click(function () {
	            var s_name = $('input[name="s_name"]').val();
	            var s_pwd = $('input[name="s_pwd"]').val();
	            var code = $('input[name="code"]').val();
	            if (s_name == '') {
	                ErroAlert('请输入您的账号');
	            } else if (s_pwd == '') {
	                ErroAlert('请输入密码');
	            } else if (code == '' || code.length != 4) {
	                ErroAlert('输入验证码');
	            } else {
	                //认证中..
	                var JsonData = {code: code };
					if(JsonData.code.toUpperCase() == CodeVal.toUpperCase()){
		                setTimeout(function loginPost() {
							document.Login.submit();
						});
					}else {
						ErroAlert("验证码输入错误");
					}
				}
			})
		});
    </script>
</body>
</html>
