	 	//�û�����
		var  usernameRegex = /^\w{3,15}$/;
		//���룺
		var passwordRegex = /^\w{6,12}$/;
		
		var phone=/^1[3456789]\d{9}$/;
		
		//alert("222");
		function validateForm(){ //����validateForm�������ڿͻ���У��
			var flag = true;
			//У���û���
			var usernameNode = byId("Reg_name"); //���IDֵΪusername�Ľڵ����
			var username = usernameNode.value;   //���usernameNode�ڵ��ֵ�����û���username�ı�������д��ֵ
			if(!usernameRegex.test(username)){    //��֤��õ���ֵ�Ƿ����������ʽ
				byId("username_span").style.color = "red"; //��������ϣ���IDֵΪusername_span�Ľڵ�������ݱ�Ϊ��ɫ
				flag = false;        //����false�����ύ
			}
			
			var userphoneNode = byId("Reg_phone"); //���IDֵΪusername�Ľڵ����
			var userphone = userphoneNode.value;   //���usernameNode�ڵ��ֵ�����û���username�ı�������д��ֵ
			if(!phone.test(userphone)){    //��֤��õ���ֵ�Ƿ����������ʽ
				byId("userphone_span").style.color = "red"; //��������ϣ���IDֵΪusername_span�Ľڵ�������ݱ�Ϊ��ɫ
				flag = false;        //����false�����ύ
			}
			
			//У������
			var passwordNode = byId("Reg_pwd1");  //���IDֵΪpassword�Ľڵ����
			var password = passwordNode.value;
			if(!passwordRegex.test(password)){
				byId("password_span").style.color = "red";
				flag = false;
			}
			
			//ȷ������
			var rePasswordNode = byId("Reg_pwd2");  //���IDֵΪrePassword�Ľڵ����
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
			
		function byId(id){  //�Զ��巽�������ڻ�ȡ���ݹ�����IDֵ��Ӧ�Ľڵ����
			return document.getElementById(id);
		}
			
		function checkUsername(node){ //������뿪�ڵ�ʱ���ô˷�������֤�ڵ������Ƿ����ע��淶
			//У���û���
			var username = node.value;  //�õ����ݹ����Ľڵ�����ֵ
			if(!usernameRegex.test(username)){  //��֤�Ƿ���Ͻڵ��Ӧ��������ʽ
				byId("username_span").style.color = "red"; //�����ϣ���Ӧ���ݱ�ɺ�ɫ
			}else{
				byId("username_span").style.color = "green";  //���ϣ���Ӧ���ݱ����ɫ
			}
		}
		
		function checkUserphone(node){ //������뿪�ڵ�ʱ���ô˷�������֤�ڵ������Ƿ����ע��淶
			//У���û���
			var userphone = node.value;  //�õ����ݹ����Ľڵ�����ֵ
			if(!phone.test(userphone)){  //��֤�Ƿ���Ͻڵ��Ӧ��������ʽ
				byId("userphone_span").style.color = "red"; //�����ϣ���Ӧ���ݱ�ɺ�ɫ
			}else{
				byId("userphone_span").style.color = "green";  //���ϣ���Ӧ���ݱ����ɫ
			}
		}
		
		function checkPassword(node){  //������뿪�ڵ�ʱ���ô˷�������֤�ڵ������Ƿ����ע��淶
			//У������
			var password = node.value;
			//alert("111");
			if (!passwordRegex.test(password)) {
				byId("password_span").style.color = "red";
			}
			else {
				byId("password_span").style.color = "green";
			}
		}	
			
		function checkRePassword(node){  //������뿪�ڵ�ʱ���ô˷�������֤�ڵ������Ƿ����ע��淶
			//ȷ������				
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
 
 