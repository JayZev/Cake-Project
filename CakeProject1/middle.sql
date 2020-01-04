
#后台人员信息表
create table manage(
	m_id int auto_increment PRIMARY KEY,	#后台用户编号
	m_account VARCHAR(20),			#后台用户的账号
	m_pwd VARCHAR(30),					#后台用户的密码
	m_phone VARCHAR(11)					#后台用户手机
);

insert into manage values(null,'Admin','123','10086');
insert into manage values(null,'Zev','123','18075775871');


#前台用户信息表
create table user(
	u_id int auto_increment PRIMARY KEY,	#前台用户编号
	u_phone VARCHAR(11),		#用户手机号[用于登陆的账号]
	u_pwd VARCHAR(30),			#用户密码
	u_name VARCHAR(50),			#用户姓名
	u_sex CHAR(2),					#用户性别
	u_address VARCHAR(200),	#用户地址
	u_appellation varchar(50)		#用户昵称
);

insert into user VALUES (null,'18075775871','123','Zev','男','湖南农业大学','泽伟');
insert into user VALUES (null,'10086','123','客服','女','中国移动','小姐姐');

#反馈表
create table feedback(
   f_id int auto_increment PRIMARY KEY,  #反馈编号
   name VARCHAR(12),                     #反馈用户姓名
   email varchar(20),                    #反馈用户email
   telephone varchar(11),                #反馈用户电话
	 f_content VARCHAR(1000),			  #反馈内容
	 f_time dateTime						  #反馈时间
);


insert into feedback values(null,'张三','23128373@qq.com','158XXXX3434','味道很好',now());
insert into feedback values(null,'李四','25789373@qq.com','158XXXX3434','很nice',now());


#蛋糕表
create table cake(
	c_id int auto_increment PRIMARY KEY,	#蛋糕编号
	c_name VARCHAR(30),						#蛋糕名字
	c_image VARCHAR(500),					#蛋糕图片
	c_price FLOAT,								#蛋糕价格
	c_type VARCHAR(30),						#蛋糕类别
	c_weight FLOAT,								#蛋糕重量
	c_taste VARCHAR(20),					#蛋糕口味
	c_color VARCHAR(20),					#蛋糕颜色
	c_introduce VARCHAR(500),			#蛋糕介绍
	c_description VARCHAR(2000),	#蛋糕描述
	c_state VARCHAR(10)					  #蛋糕状态
);

insert into cake values(null,'牛奶蛋糕1','image/milk1.jpg',100,'牛奶蛋糕',0.5,'巧克力','白色','这是牛奶蛋糕1',
'全巧克力的蛋糕:它不是最眩、最醒目的，但是总有忠实拥趸对它青睐有加。香浓诱人的巧克力口味;柔软的口感、甜蜜的味道，完美的全巧克力蛋糕经得起各种口味的挑剔。
表面富有曲线美的巧克力花纹与蛋糕的名称相得益彰。','上架');
insert into cake values(null,'牛奶蛋糕2','image/milk2.jpg',200,'牛奶蛋糕',2,'牛奶','白色','这是牛奶蛋糕2',
'全巧克力的蛋糕:它不是最眩、最醒目的，但是总有忠实拥趸对它青睐有加。香浓诱人的巧克力口味;柔软的口感、甜蜜的味道，完美的全巧克力蛋糕经得起各种口味的挑剔。
表面富有曲线美的巧克力花纹与蛋糕的名称相得益彰。','上架');
insert into cake values(null,'牛奶蛋糕3','image/milk3.jpg',350,'牛奶蛋糕',3,'混合水果','白色','这是牛奶蛋糕3',
'全巧克力的蛋糕:它不是最眩、最醒目的，但是总有忠实拥趸对它青睐有加。香浓诱人的巧克力口味;柔软的口感、甜蜜的味道，完美的全巧克力蛋糕经得起各种口味的挑剔。
表面富有曲线美的巧克力花纹与蛋糕的名称相得益彰。','上架');
insert into cake values(null,'牛奶蛋糕4','image/milk4.jpg',150,'牛奶蛋糕',1,'蓝莓','蓝色','这是牛奶蛋糕4',
'全巧克力的蛋糕:它不是最眩、最醒目的，但是总有忠实拥趸对它青睐有加。香浓诱人的巧克力口味;柔软的口感、甜蜜的味道，完美的全巧克力蛋糕经得起各种口味的挑剔。
表面富有曲线美的巧克力花纹与蛋糕的名称相得益彰。','上架');
insert into cake values(null,'牛奶蛋糕5','image/milk5.jpg',180,'牛奶蛋糕',1.5,'草莓','棕色','这是牛奶蛋糕5',
'全巧克力的蛋糕:它不是最眩、最醒目的，但是总有忠实拥趸对它青睐有加。香浓诱人的巧克力口味;柔软的口感、甜蜜的味道，完美的全巧克力蛋糕经得起各种口味的挑剔。
表面富有曲线美的巧克力花纹与蛋糕的名称相得益彰。','上架');

insert into cake values(null,'水果蛋糕1','image/fruits1.jpg',280,'水果蛋糕',1.5,'混合水果','黑色','这是水果蛋糕1',
'全巧克力的蛋糕:它不是最眩、最醒目的，但是总有忠实拥趸对它青睐有加。香浓诱人的巧克力口味;柔软的口感、甜蜜的味道，完美的全巧克力蛋糕经得起各种口味的挑剔。
表面富有曲线美的巧克力花纹与蛋糕的名称相得益彰。','上架');
insert into cake values(null,'水果蛋糕2','image/fruits2.jpg',200,'水果蛋糕',0.5,'草莓','黑色','这是水果蛋糕2',
'全巧克力的蛋糕:它不是最眩、最醒目的，但是总有忠实拥趸对它青睐有加。香浓诱人的巧克力口味;柔软的口感、甜蜜的味道，完美的全巧克力蛋糕经得起各种口味的挑剔。
表面富有曲线美的巧克力花纹与蛋糕的名称相得益彰。','上架');
insert into cake values(null,'水果蛋糕3','image/fruits3.jpg',310,'水果蛋糕',2,'混合水果','黑色','这是水果蛋糕3',
'全巧克力的蛋糕:它不是最眩、最醒目的，但是总有忠实拥趸对它青睐有加。香浓诱人的巧克力口味;柔软的口感、甜蜜的味道，完美的全巧克力蛋糕经得起各种口味的挑剔。
表面富有曲线美的巧克力花纹与蛋糕的名称相得益彰。','上架');

insert into cake values(null,'花层蛋糕1','image/flower1.jpg',510,'花层蛋糕',4,'混合水果','白色','这是花层蛋糕1',
'全巧克力的蛋糕:它不是最眩、最醒目的，但是总有忠实拥趸对它青睐有加。香浓诱人的巧克力口味;柔软的口感、甜蜜的味道，完美的全巧克力蛋糕经得起各种口味的挑剔。
表面富有曲线美的巧克力花纹与蛋糕的名称相得益彰。','上架');
insert into cake values(null,'花层蛋糕2','image/flower2.jpg',210,'花层蛋糕',4,'混合水果','粉色','这是花层蛋糕2',
'全巧克力的蛋糕:它不是最眩、最醒目的，但是总有忠实拥趸对它青睐有加。香浓诱人的巧克力口味;柔软的口感、甜蜜的味道，完美的全巧克力蛋糕经得起各种口味的挑剔。
表面富有曲线美的巧克力花纹与蛋糕的名称相得益彰。','上架');
insert into cake values(null,'花层蛋糕3','image/flower3.jpg',410,'花层蛋糕',4,'香草','粉色','这是花层蛋糕3',
'全巧克力的蛋糕:它不是最眩、最醒目的，但是总有忠实拥趸对它青睐有加。香浓诱人的巧克力口味;柔软的口感、甜蜜的味道，完美的全巧克力蛋糕经得起各种口味的挑剔。
表面富有曲线美的巧克力花纹与蛋糕的名称相得益彰。','上架');
insert into cake values(null,'花层蛋糕4','image/flower4.jpg',210,'花层蛋糕',4,'香草','白色','这是花层蛋糕4',
'全巧克力的蛋糕:它不是最眩、最醒目的，但是总有忠实拥趸对它青睐有加。香浓诱人的巧克力口味;柔软的口感、甜蜜的味道，完美的全巧克力蛋糕经得起各种口味的挑剔。
表面富有曲线美的巧克力花纹与蛋糕的名称相得益彰。','上架');
insert into cake values(null,'花层蛋糕5','image/flower5.jpg',810,'花层蛋糕',4,'蜂蜜','蓝色','这是花层蛋糕5',
'全巧克力的蛋糕:它不是最眩、最醒目的，但是总有忠实拥趸对它青睐有加。香浓诱人的巧克力口味;柔软的口感、甜蜜的味道，完美的全巧克力蛋糕经得起各种口味的挑剔。
表面富有曲线美的巧克力花纹与蛋糕的名称相得益彰。','上架');
insert into cake values(null,'花层蛋糕6','image/flower6.jpg',710,'花层蛋糕',4,'草莓','棕色','这是花层蛋糕6',
'全巧克力的蛋糕:它不是最眩、最醒目的，但是总有忠实拥趸对它青睐有加。香浓诱人的巧克力口味;柔软的口感、甜蜜的味道，完美的全巧克力蛋糕经得起各种口味的挑剔。
表面富有曲线美的巧克力花纹与蛋糕的名称相得益彰。','上架');
insert into cake values(null,'花层蛋糕7','image/flower7.jpg',520,'花层蛋糕',4,'巧克力','白色','这是花层蛋糕7',
'全巧克力的蛋糕:它不是最眩、最醒目的，但是总有忠实拥趸对它青睐有加。香浓诱人的巧克力口味;柔软的口感、甜蜜的味道，完美的全巧克力蛋糕经得起各种口味的挑剔。
表面富有曲线美的巧克力花纹与蛋糕的名称相得益彰。','上架');
insert into cake values(null,'花层蛋糕8','image/flower8.jpg',540,'花层蛋糕',4,'蜂蜜','白色','这是花层蛋糕8',
'全巧克力的蛋糕:它不是最眩、最醒目的，但是总有忠实拥趸对它青睐有加。香浓诱人的巧克力口味;柔软的口感、甜蜜的味道，完美的全巧克力蛋糕经得起各种口味的挑剔。
表面富有曲线美的巧克力花纹与蛋糕的名称相得益彰。','上架');
insert into cake values(null,'花层蛋糕9','image/flower9.jpg',430,'花层蛋糕',4,'香草','白色','这是花层蛋糕9',
'全巧克力的蛋糕:它不是最眩、最醒目的，但是总有忠实拥趸对它青睐有加。香浓诱人的巧克力口味;柔软的口感、甜蜜的味道，完美的全巧克力蛋糕经得起各种口味的挑剔。
表面富有曲线美的巧克力花纹与蛋糕的名称相得益彰。','上架');
insert into cake values(null,'花层蛋糕10','image/flower10.jpg',666,'花层蛋糕',4,'草莓','粉色','这是花层蛋糕10',
'全巧克力的蛋糕:它不是最眩、最醒目的，但是总有忠实拥趸对它青睐有加。香浓诱人的巧克力口味;柔软的口感、甜蜜的味道，完美的全巧克力蛋糕经得起各种口味的挑剔。
表面富有曲线美的巧克力花纹与蛋糕的名称相得益彰。','上架');


#购物车表
create table car(
	car_id int auto_increment PRIMARY KEY,	#购物车编号
	u_id int,				#用户编号
	c_id int,				#蛋糕编号
	car_num int			#蛋糕数量
);

#订单表
create table sell(
	s_id int auto_increment PRIMARY KEY,	#编号   仅用于编号
	u_id int,							#用户编号
	s_time datetime,			#下单时间
	s_condition VARCHAR(10),	#订单状态[用来表示订单是否完成]
	s_consignee VARCHAR(50),	#收货人姓名
	s_address VARCHAR(200),		#收货人地址
	s_money		float,						#订单金额
	s_freight	float,						#运费
	s_sex varchar(10),				#性别
	s_phone varchar(11),			#联系方式
	s_predict	datetime,				#预计送达时间
	s_actual	datetime,				#实际送达时间
  s_comment varchar(1000),  #评论
  s_commentTime  datetime		#评论时间

);
select * from sell;

drop table sell;
#12月份订单信息
insert into sell values(null,1,'2019-12-01','完成','张三','长沙县',300,0,'先生','13054030872','2019-12-01 12:03:12','2019-12-01 12:13:12','非常好','2019-12-02 10:11:12');
insert into sell values(null,1,'2019-12-02','完成','李四','芙蓉区',200,0,'先生','13054030872','2019-12-02 11:03:12','2019-12-02 11:13:12','非常好','2019-12-03 10:11:12');
insert into sell values(null,1,'2019-12-03','完成','王五','雨花区',350,0,'先生','13054030872','2019-12-03 13:03:12','2019-12-03 11:13:12','非常好','2019-12-04 10:11:12');
insert into sell values(null,1,'2019-12-04','完成','赵六','岳麓区',150,0,'先生','13054030872','2019-12-04 13:03:12','2019-12-04 11:13:12','非常好','2019-12-05 10:11:12');
insert into sell values(null,1,'2019-12-05','完成','孙七','岳麓区',180,0,'先生','13054030872','2019-12-05 13:03:12','2019-12-05 11:13:12','非常好','2019-12-06 10:11:12');
insert into sell values(null,1,'2019-12-06','完成','王八','岳麓区',560,0,'先生','13054030872','2019-12-06 12:03:12','2019-12-06 12:13:12','很棒！','2019-12-07 10:11:12');
insert into sell values(null,2,'2019-12-07','完成','唐僧','岳麓区',200,5,'先生','13054030872','2019-12-07 12:03:12','2019-12-07 11:13:12','非常好','2019-12-08 10:11:12');
insert into sell values(null,2,'2019-12-08','完成','悟空','岳麓区',310,5,'先生','13054030872','2019-12-08 12:03:12','2019-12-08 12:13:12','很棒！','2019-12-09 10:11:12');
insert into sell values(null,2,'2019-12-09','完成','悟能','岳麓区',510,5,'先生','13054030872','2019-12-09 12:03:12','2019-12-09 12:13:12','很棒！','2019-12-10 10:11:12');
insert into sell values(null,2,'2019-12-10','完成','悟净','岳麓区',420,5,'先生','13054030872','2019-12-10 12:03:12','2019-12-10 12:13:12','很棒！','2019-12-11 10:11:12');
insert into sell values(null,2,'2019-12-11','完成','佩奇','岳麓区',410,5,'女士','13054030872','2019-12-11 12:03:12','2019-12-11 12:13:12','很棒！','2019-12-12 10:11:12');
insert into sell values(null,2,'2019-12-12','完成','乔治','岳麓区',420,5,'先生','13054030872','2019-12-12 12:03:12','2019-12-12 12:13:12','很棒！','2019-12-13 10:11:12');
insert into sell values(null,1,'2019-12-13','完成','张三','岳麓区',810,5,'先生','13054030872','2019-12-13 12:03:12','2019-12-13 12:13:12','很棒！','2019-12-14 10:11:12');
insert into sell values(null,1,'2019-12-14','完成','李四','岳麓区',710,5,'先生','13054030872','2019-12-14 12:03:12','2019-12-14 12:13:12','很棒！','2019-12-15 10:11:12');
insert into sell values(null,1,'2019-12-15','完成','王五','岳麓区',520,5,'先生','13054030872','2019-12-15 12:03:12','2019-12-15 12:13:12','很棒！','2019-12-16 10:11:12');
insert into sell values(null,1,'2019-12-16','完成','赵六','岳麓区',300,5,'先生','13054030872','2019-12-16 12:03:12','2019-12-16 12:13:12','很棒！','2019-12-17 10:11:12');
insert into sell values(null,1,'2019-12-17','完成','孙七','岳麓区',200,5,'先生','13054030872','2019-12-17 12:03:12','2019-12-17 12:13:12','很棒！','2019-12-18 10:11:12');
insert into sell values(null,1,'2019-12-18','完成','王八','岳麓区',350,5,'先生','13054030872','2019-12-18 12:03:12','2019-12-18 12:13:12','很棒！','2019-12-19 10:11:12');
insert into sell values(null,2,'2019-12-19','未完成','大叔','岳麓区',150,5,'先生','13054030872','2019-12-19 12:03:12',null,'',null);
insert into sell values(null,2,'2019-12-20','未完成','皮皮虾','岳麓区',180,5,'先生','13054030872','2019-12-20 12:03:12',null,'',null);
insert into sell values(null,2,'2019-12-21','未完成','红孩儿','岳麓区',560,5,'女士','13054030872','2019-12-21 12:03:12',null,'',null);
insert into sell values(null,2,'2019-12-22','未完成','琅琊榜','岳麓区',200,5,'先生','13054030872','2019-12-22 12:03:12',null,'',null);
insert into sell values(null,2,'2019-12-23','未完成','如来','岳麓区',310,5,'先生','13054030872','2019-12-23 12:03:12',null,'',null);
insert into sell values(null,2,'2019-12-24','未完成','兰溪','岳麓区',510,5,'女士','13054030872','2019-12-24 12:03:12',null,'',null);
insert into sell values(null,2,'2019-12-25','未完成','春亚','岳麓区',420,5,'女士','13054030872','2019-12-25 12:03:12',null,'',null);
insert into sell values(null,2,'2019-12-26','未完成','夏天','岳麓区',410,5,'女士','13054030872','2019-12-26 12:03:12',null,'',null);
insert into sell values(null,2,'2019-12-27','未完成','春风','岳麓区',420,5,'女士','13054030872','2019-12-27 12:03:12',null,'',null);
insert into sell values(null,2,'2019-12-28','未完成','东芝','岳麓区',810,5,'女士','13054030872','2019-12-28 12:03:12',null,'',null);
insert into sell values(null,2,'2019-12-29','未完成','秋雅','岳麓区',710,5,'女士','13054030872','2019-12-29 12:03:12',null,'',null);
insert into sell values(null,1,'2019-12-30','未完成','猪八戒','岳麓区',520,0,'先生','13054030872','2019-12-30 12:03:12',null,'',null);
insert into sell values(null,1,'2019-12-31','未完成','猴子','岳麓区',540,0,'先生','13054030872','2019-12-31 12:03:12',null,'',null);
insert into sell values(null,2,'2019-12-05','未完成','暗凯','岳麓区',100,0,'先生','13054030872','2019-12-05 12:03:12',null,'',null);
insert into sell values(null,2,'2019-12-25','未完成','米歇尔','岳麓区',200,0,'先生','13054030872','2019-12-25 12:03:12',null,'',null);
insert into sell values(null,2,'2019-12-01 ','未完成','夏尔米','岳麓区',350,0,'女士','13054030872','2019-12-01 12:03:12',null,'',null);
#1-10月的数据
insert into sell values(null,2,'2019-1-01 ','完成','卢卡尔','岳麓区',100,0,'先生','13054030872','2019-1-01 12:03:12','2019-1-01 12:13:12','很棒！','2019-1-02 10:11:12');
insert into sell values(null,2,'2019-2-01 ','完成','卡恩','岳麓区',200,0,'先生','13054030872','2019-2-01 12:03:12','2019-2-01 12:13:12','很棒！','2019-2-02 10:11:12');
insert into sell values(null,2,'2019-3-01 ','完成','赵云','岳麓区',350,0,'先生','13054030872','2019-3-01 12:03:12','2019-3-01 12:13:12','很棒！','2019-3-02 10:11:12');
insert into sell values(null,1,'2019-4-01 ','完成','小乔','岳麓区',150,0,'女士','13054030872','2019-4-01 12:03:12','2019-4-01 12:13:12','很棒！','2019-4-02 10:11:12');
insert into sell values(null,1,'2019-5-01 ','完成','诸葛亮','岳麓区',180,0,'先生','13054030872','2019-5-01 12:03:12','2019-5-01 12:13:12','很棒！','2019-5-02 10:11:12');
insert into sell values(null,1,'2019-6-01 ','完成','曹操','岳麓区',280,0,'先生','13054030872','2019-6-01 12:03:12','2019-6-01 12:13:12','很棒！','2019-6-02 10:11:12');
insert into sell values(null,1,'2019-7-01 ','完成','小乔','岳麓区',200,0,'女士','13054030872','2019-7-01 12:03:12','2019-7-01 12:13:12','很棒！','2019-7-02 10:11:12');
insert into sell values(null,1,'2019-8-01 ','完成','耀','岳麓区',310,0,'先生','13054030872','2019-8-01 12:03:12','2019-8-01 12:13:12','很棒！','2019-8-02 10:11:12');
insert into sell values(null,1,'2019-9-01 ','完成','露娜','岳麓区',510,0,'女士','13054030872','2019-9-01 12:03:12','2019-9-01 12:13:12','很棒！','2019-9-02 10:11:12');
insert into sell values(null,1,'2019-10-01 ','完成','关羽','岳麓区',210,0,'先生','13054030872','2019-10-01 12:03:12','2019-10-01 12:13:12','很棒！','2019-10-02 10:11:12');

#11月份数据
insert into sell values(null,1,'2019-11-01 ','完成','司马懿','岳麓区',300,0,'先生','13054030872','2019-11-01 12:03:12','2019-11-01 12:13:12','很棒！','2019-11-02 10:11:12');
insert into sell values(null,1,'2019-11-02 ','完成','刘备','岳麓区',200,0,'先生','13054030872','2019-11-02 12:03:12','2019-11-02 12:13:12','很棒！','2019-11-03 10:11:12');
insert into sell values(null,1,'2019-11-03 ','完成','廉颇','岳麓区',350,0,'先生','13054030872','2019-11-03 12:03:12','2019-11-03 12:13:12','很棒！','2019-11-04 10:11:12');
insert into sell values(null,1,'2019-11-04 ','完成','张辽','岳麓区',150,0,'先生','13054030872','2019-11-04 12:03:12','2019-11-04 12:13:12','很棒！','2019-11-05 10:11:12');
insert into sell values(null,1,'2019-11-05 ','完成','张飞','岳麓区',180,0,'先生','13054030872','2019-11-05 12:03:12','2019-11-05 12:13:12','很棒！','2019-11-06 10:11:12');
insert into sell values(null,1,'2019-11-06 ','完成','黄忠','岳麓区',560,0,'先生','13054030872','2019-11-06 12:03:12','2019-11-06 12:13:12','很棒！','2019-11-07 10:11:12');
insert into sell values(null,2,'2019-11-07 ','完成','魏延','岳麓区',200,0,'先生','13054030872','2019-11-07 12:03:12','2019-11-07 12:13:12','很棒！','2019-11-08 10:11:12');
insert into sell values(null,2,'2019-11-08 ','完成','郭嘉','岳麓区',310,0,'先生','13054030872','2019-11-08 12:03:12','2019-11-08 12:13:12','很棒！','2019-11-09 10:11:12');
insert into sell values(null,2,'2019-11-09 ','完成','曹仁','岳麓区',510,0,'先生','13054030872','2019-11-09 12:03:12','2019-11-09 12:13:12','很棒！','2019-11-10 10:11:12');
insert into sell values(null,2,'2019-11-10 ','完成','貂蝉','岳麓区',420,0,'女士','13054030872','2019-11-10 12:03:12','2019-11-10 12:13:12','不错！','2019-11-11 10:11:12');
insert into sell values(null,2,'2019-11-11 ','完成','不知火舞','岳麓区',410,0,'女士','13054030872','2019-11-11 12:03:12','2019-11-11 12:13:12','不错！','2019-11-12 10:11:12');
insert into sell values(null,2,'2019-11-12 ','完成','王昭君','岳麓区',420,0,'女士','13054030872','2019-11-12 12:03:12','2019-11-12 12:13:12','不错！','2019-11-13 10:11:12');
insert into sell values(null,1,'2019-11-13 ','完成','甄姬','岳麓区',810,0,'女士','13054030872','2019-11-13 12:03:12','2019-11-13 12:13:12','不错！','2019-11-14 10:11:12');
insert into sell values(null,1,'2019-11-14 ','完成','蔡文姬','岳麓区',710,0,'女士','13054030872','2019-11-14 12:03:12','2019-11-14 12:13:12','不错！','2019-11-15 10:11:12');
insert into sell values(null,1,'2019-11-15 ','完成','卡密尔','岳麓区',520,0,'女士','13054030872','2019-11-15 12:03:12','2019-11-15 12:13:12','不错！','2019-11-16 10:11:12');
insert into sell values(null,1,'2019-11-16 ','完成','虞姬','岳麓区',300,0,'女士','13054030872','2019-11-16 12:03:12','2019-11-16 12:13:12','不错！','2019-11-17 10:11:12');
insert into sell values(null,1,'2019-11-17 ','完成','项羽','岳麓区',200,0,'先生','13054030872','2019-11-17 12:03:12','2019-11-17 12:13:12','很棒！','2019-11-18 10:11:12');
insert into sell values(null,1,'2019-11-18 ','完成','庄周','岳麓区',350,0,'先生','13054030872','2019-11-18 12:03:12','2019-11-18 12:13:12','很棒！','2019-11-19 10:11:12');
insert into sell values(null,2,'2019-11-19 ','完成','孙权','岳麓区',150,0,'先生','13054030872','2019-11-19 12:03:12','2019-11-19 12:13:12','很棒！','2019-11-20 10:11:12');
insert into sell values(null,2,'2019-11-20 ','完成','孙策','岳麓区',180,0,'先生','13054030872','2019-11-20 12:03:12','2019-11-20 12:13:12','很棒！','2019-11-21 10:11:12');
insert into sell values(null,2,'2019-11-21 ','完成','周瑜','岳麓区',560,0,'先生','13054030872','2019-11-21 12:03:12','2019-11-21 12:13:12','很棒！','2019-11-22 10:11:12');
insert into sell values(null,2,'2019-11-22 ','完成','吕蒙','岳麓区',200,0,'先生','13054030872','2019-11-22 12:03:12','2019-11-22 12:13:12','很棒！','2019-11-23 10:11:12');
insert into sell values(null,2,'2019-11-23 ','完成','陆逊','岳麓区',310,0,'先生','13054030872','2019-11-23 12:03:12','2019-11-23 12:13:12','很棒！','2019-11-24 10:11:12');
insert into sell values(null,2,'2019-11-24 ','完成','阿狸','岳麓区',510,0,'女士','13054030872','2019-11-24 12:03:12','2019-11-24 12:13:12','不错！','2019-11-25 10:11:12');
insert into sell values(null,2,'2019-11-25 ','完成','伊芙琳','岳麓区',420,0,'女士','13054030872','2019-11-25 12:03:12','2019-11-25 12:13:12','不错！','2019-11-26 10:11:12');
insert into sell values(null,2,'2019-11-26 ','完成','丽桑卓','岳麓区',410,0,'女士','13054030872','2019-11-26 12:03:12','2019-11-26 12:13:12','不错！','2019-11-27 10:11:12');
insert into sell values(null,2,'2019-11-27 ','完成','阿卡丽','岳麓区',420,0,'女士','13054030872','2019-11-27 12:03:12','2019-11-27 12:13:12','不错！','2019-11-28 10:11:12');
insert into sell values(null,2,'2019-11-28 ','完成','辛德拉','岳麓区',810,0,'女士','13054030872','2019-11-28 12:03:12','2019-11-28 12:13:12','不错！','2019-11-29 10:11:12');
insert into sell values(null,2,'2019-11-29 ','完成','卡沙','岳麓区',710,0,'女士','13054030872','2019-11-29 12:03:12','2019-11-29 12:13:12','不错！','2019-11-30 10:11:12');
insert into sell values(null,1,'2019-11-30 ','完成','伊泽瑞尔','岳麓区',520,0,'先生','13054030872','2019-11-30 12:03:12','2019-11-30 12:13:12','非常棒！','2019-12-01 10:11:12');

#订单详情表
create table detail(
	d_id int auto_increment PRIMARY KEY,	#详情编号
	s_id int,		#订单编号
	c_id int,   #蛋糕编号 
	d_num int		#蛋糕数量
);
drop table detail;
#12月份数据
insert into detail values(null,1,1,3);
insert into detail values(null,2,2,1);
insert into detail values(null,3,3,1);
insert into detail values(null,4,4,1);
insert into detail values(null,5,5,1);
insert into detail values(null,6,6,2);
insert into detail values(null,7,7,1);
insert into detail values(null,8,8,1);
insert into detail values(null,9,9,1);
insert into detail values(null,10,10,2);
insert into detail values(null,11,11,1);
insert into detail values(null,12,12,2);
insert into detail values(null,13,13,1);
insert into detail values(null,14,14,1);
insert into detail values(null,15,15,1);
insert into detail values(null,16,1,3);
insert into detail values(null,17,2,1);
insert into detail values(null,18,3,1);
insert into detail values(null,19,4,1);
insert into detail values(null,20,5,1);
insert into detail values(null,21,6,2);
insert into detail values(null,22,7,1);
insert into detail values(null,23,8,1);
insert into detail values(null,24,9,1);
insert into detail values(null,25,10,2);
insert into detail values(null,26,11,1);
insert into detail values(null,27,12,2);
insert into detail values(null,28,13,1);
insert into detail values(null,29,14,1);
insert into detail values(null,30,15,1);
insert into detail values(null,31,16,1);
insert into detail values(null,32,1,1);
insert into detail values(null,33,2,1);
insert into detail values(null,34,3,1);

#11月份的数据
insert into detail values(null,35,1,1);
insert into detail values(null,36,2,1);
insert into detail values(null,37,3,1);
insert into detail values(null,38,4,1);
insert into detail values(null,39,5,1);
insert into detail values(null,40,6,1);
insert into detail values(null,41,7,1);
insert into detail values(null,42,8,1);
insert into detail values(null,43,9,1);
insert into detail values(null,44,10,1);

#11月份的数据
insert into detail values(null,45,1,3);
insert into detail values(null,46,2,1);
insert into detail values(null,47,3,1);
insert into detail values(null,48,4,1);
insert into detail values(null,49,5,1);
insert into detail values(null,50,6,2);
insert into detail values(null,51,7,1);
insert into detail values(null,52,8,1);
insert into detail values(null,53,9,1);
insert into detail values(null,54,10,2);
insert into detail values(null,55,11,1);
insert into detail values(null,56,12,2);
insert into detail values(null,57,13,1);
insert into detail values(null,58,14,1);
insert into detail values(null,59,15,1);
insert into detail values(null,60,1,3);
insert into detail values(null,61,2,1);
insert into detail values(null,62,3,1);
insert into detail values(null,63,4,1);
insert into detail values(null,64,5,1);
insert into detail values(null,65,6,2);
insert into detail values(null,66,7,1);
insert into detail values(null,67,8,1);
insert into detail values(null,68,9,1);
insert into detail values(null,69,10,2);
insert into detail values(null,70,11,1);
insert into detail values(null,71,12,2);
insert into detail values(null,72,13,1);
insert into detail values(null,73,14,1);
insert into detail values(null,74,15,1);


#查询表
select * from manage;
select * from user;
select * from feedback;
select * from cake;
select * from car;
select * from sell;
select * from detail;


#查询语句
select * from sell,cake,detail where s_condition='完成' and cake.c_id = detail.c_id and detail.s_id = sell.s_id


select date_format(s_time,'%Y-%m-%d'),sum(s_money) from sell where s_time>='2018-12-25 00:00:00' and s_time<'2018-12-31 23:59:59' group by date_format(s_time,'%Y-%m-%d') order by s_time ;

select sell.s_id,s_consignee,cake.c_name,d_num,s_time,s_condition from sell,cake,detail where s_condition='完成' and cake.c_id = detail.c_id and detail.s_id = sell.s_id

select * from sell,cake,detail where s_condition='未完成' and cake.c_id = detail.c_id and detail.s_id = sell.s_id

update cake set c_name='小姐姐3',c_price=200,c_type='11',c_weight=12,c_taste='33',c_color='22',c_introduce='44',C_description='55',C_state='上架' where c_id=22


select sum(s_money),date_format(s_time,'%m') from sell where date_format(s_time,'%Y') = '2018' group by date_format(s_time,'%m') order by date_format(s_time,'%m') desc

select sum(s_money) from sell where date_format(s_time,'%Y') = 2018  group by date_format(s_time,'%m') order by date_format(s_time,'%m') desc

select * from sell,cake,detail where s_condition='未完成' and cake.c_id = detail.c_id and detail.s_id = sell.s_id order by s_time desc



