	 	//用户名：
		var  usernameRegex = /^\w{3,15}$/;
		//密码：
		var passwordRegex = /^\w{6,12}$/;
		
		var phone=/^1[3456789]\d{9}$/;
		
		//alert("222");
		function validateForm(){ //定义validateForm方法用于客户端校验
			var flag = true;
			//校验用户名
			var usernameNode = byId("Reg_name"); //获得ID值为username的节点对象
			var username = usernameNode.value;   //获得usernameNode节点的值，即用户在username文本框内填写的值
			if(!usernameRegex.test(username)){    //验证获得到的值是否符合正则表达式
				byId("username_span").style.color = "red"; //如果不符合，则将ID值为username_span的节点对象内容变为红色
				flag = false;        //返回false，不提交
			}
			
			var userphoneNode = byId("Reg_phone"); //获得ID值为username的节点对象
			var userphone = userphoneNode.value;   //获得usernameNode节点的值，即用户在username文本框内填写的值
			if(!phone.test(userphone)){    //验证获得到的值是否符合正则表达式
				byId("userphone_span").style.color = "red"; //如果不符合，则将ID值为username_span的节点对象内容变为红色
				flag = false;        //返回false，不提交
			}
			
			//校验密码
			var passwordNode = byId("Reg_pwd1");  //获得ID值为password的节点对象
			var password = passwordNode.value;
			if(!passwordRegex.test(password)){
				byId("password_span").style.color = "red";
				flag = false;
			}
			
			//确认密码
			var rePasswordNode = byId("Reg_pwd2");  //获得ID值为rePassword的节点对象
			var rePassword = rePasswordNode.value;
			if(!password==rePassword){
				byId("rePassword_span").style.color = "red";
				flag = false;
			}else if(!passwordRegex.test(rePassword)){
				byId("rePassword_span").style.color = "red";
				flag = false;
			}else{
				byId("rePassword_span").style.color = "green";
			}
 
			return flag;
		}
			
		function byId(id){  //自定义方法，用于获取传递过来的ID值对应的节点对象
			return document.getElementById(id);
		}
			
		function checkUsername(node){ //当鼠标离开节点时调用此方法，验证节点内容是否符合注册规范
			//校验用户名
			var username = node.value;  //得到传递过来的节点对象的值
			if(!usernameRegex.test(username)){  //验证是否符合节点对应的正则表达式
				byId("username_span").style.color = "red"; //不符合，相应内容变成红色
			}else{
				byId("username_span").style.color = "green";  //符合，相应内容变成绿色
			}
		}
		
		function checkUserphone(node){ //当鼠标离开节点时调用此方法，验证节点内容是否符合注册规范
			//校验用户名
			var userphone = node.value;  //得到传递过来的节点对象的值
			if(!phone.test(userphone)){  //验证是否符合节点对应的正则表达式
				byId("userphone_span").style.color = "red"; //不符合，相应内容变成红色
			}else{
				byId("userphone_span").style.color = "green";  //符合，相应内容变成绿色
			}
		}
		
		function checkPassword(node){  //当鼠标离开节点时调用此方法，验证节点内容是否符合注册规范
			//校验密码
			var password = node.value;
			//alert("111");
			if (!passwordRegex.test(password)) {
				byId("password_span").style.color = "red";
			}
			else {
				byId("password_span").style.color = "green";
			}
		}	
			
		function checkRePassword(node){  //当鼠标离开节点时调用此方法，验证节点内容是否符合注册规范
			//确认密码				
			var rePassword = node.value;
			var password = byId("Reg_pwd1").value;
			//alert(repassword+"***"+password);			
			if(password!=rePassword){					
				byId("rePassword_span").style.color = "red";
			}else if(!passwordRegex.test(rePassword)){
				byId("rePassword_span").style.color = "red";
			}else{
				byId("rePassword_span").style.color = "green";
			}
		}		
 
 