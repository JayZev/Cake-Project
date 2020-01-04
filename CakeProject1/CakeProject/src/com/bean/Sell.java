package com.bean;

public class Sell {
	/**
	 *  s_id int auto_increment PRIMARY KEY,	#编号   仅用于编号
		u_id int,									#用户编号
		s_time datetime,					#下单时间
		s_condition VARCHAR(10),	#订单状态[用来表示订单是否完成]
		s_consignee VARCHAR(50),	#收货人姓名
		s_address VARCHAR(200),		#收货人地址
		s_money float,						#订单金额
		s_freight float,						#运费
		s_sex varchar(10),				#性别
		s_phone varchar(11),			#联系方式
		s_predict	datetime,				#预计送达时间
		s_actual	datetime				#实际送达时间
		s_comment varchar(1000)			#用户评价
		s_actual	datetime			#用户评价时间
	 */
	private int s_id;
	private int u_id;
	private String s_time;
	private String s_condition;
	private String s_consignee;
	private String s_address;
	private float s_money;
	private float s_freight;
	
	private String s_sex;
	private String s_phone;
	private String s_predict;
	private String s_actual;
	
	private String s_comment;
	private String s_commentTime;
	public Sell() {
		super();
	}
	public Sell(int s_id) {
		super();
		this.s_id = s_id;
	}
	public Sell(int s_id, int u_id, String s_time, String s_condition, String s_consignee, String s_address, float s_money) {
		super();
		this.s_id = s_id;
		this.u_id = u_id;
		this.s_time = s_time;
		this.s_condition = s_condition;
		this.s_consignee = s_consignee;
		this.s_address = s_address;
		this.s_money = s_money;
	}
	
	public Sell(int s_id, int u_id, String s_time, String s_condition, String s_consignee, String s_address,
			float s_money, float s_freight) {
		super();
		this.s_id = s_id;
		this.u_id = u_id;
		this.s_time = s_time;
		this.s_condition = s_condition;
		this.s_consignee = s_consignee;
		this.s_address = s_address;
		this.s_money = s_money;
		this.s_freight = s_freight;
	}
	
	public Sell(int s_id, int u_id, String s_time, String s_condition, String s_consignee, String s_address,
			float s_money, float s_freight, String s_sex, String s_phone, String s_predict, String s_actual) {
		super();
		this.s_id = s_id;
		this.u_id = u_id;
		this.s_time = s_time;
		this.s_condition = s_condition;
		this.s_consignee = s_consignee;
		this.s_address = s_address;
		this.s_money = s_money;
		this.s_freight = s_freight;
		this.s_sex = s_sex;
		this.s_phone = s_phone;
		this.s_predict = s_predict;
		this.s_actual = s_actual;
	}
	
	public Sell(int s_id, int u_id, String s_time, String s_condition, String s_consignee, String s_address,
			float s_money, float s_freight, String s_sex, String s_phone, String s_predict, String s_actual,
			String s_comment, String s_commentTime) {
		super();
		this.s_id = s_id;
		this.u_id = u_id;
		this.s_time = s_time;
		this.s_condition = s_condition;
		this.s_consignee = s_consignee;
		this.s_address = s_address;
		this.s_money = s_money;
		this.s_freight = s_freight;
		this.s_sex = s_sex;
		this.s_phone = s_phone;
		this.s_predict = s_predict;
		this.s_actual = s_actual;
		this.s_comment = s_comment;
		this.s_commentTime = s_commentTime;
	}
	public int getS_id() {
		return s_id;
	}
	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getS_time() {
		return s_time;
	}
	public void setS_time(String s_time) {
		this.s_time = s_time;
	}
	public String getS_condition() {
		return s_condition;
	}
	public void setS_condition(String s_condition) {
		this.s_condition = s_condition;
	}
	public String getS_consignee() {
		return s_consignee;
	}
	public void setS_consignee(String s_consignee) {
		this.s_consignee = s_consignee;
	}
	public String getS_address() {
		return s_address;
	}
	public void setS_address(String s_address) {
		this.s_address = s_address;
	}
	public float getS_money() {
		return s_money;
	}
	public void setS_money(float s_money) {
		this.s_money = s_money;
	}
	
	public float getS_freight() {
		return s_freight;
	}
	public void setS_freight(float s_freight) {
		this.s_freight = s_freight;
	}
	
	public String getS_sex() {
		return s_sex;
	}
	public void setS_sex(String s_sex) {
		this.s_sex = s_sex;
	}
	public String getS_phone() {
		return s_phone;
	}
	public void setS_phone(String s_phone) {
		this.s_phone = s_phone;
	}
	public String getS_predict() {
		return s_predict;
	}
	public void setS_predict(String s_predict) {
		this.s_predict = s_predict;
	}
	public String getS_actual() {
		return s_actual;
	}
	public void setS_actual(String s_actual) {
		this.s_actual = s_actual;
	}
	
	public String getS_comment() {
		return s_comment;
	}
	public void setS_comment(String s_comment) {
		this.s_comment = s_comment;
	}
	
	public String getS_commentTime() {
		return s_commentTime;
	}
	public void setS_commentTime(String s_commentTime) {
		this.s_commentTime = s_commentTime;
	}
	@Override
	public String toString() {
		return s_id + ", " + u_id + ", " + s_time + ", " + s_condition + ", " + s_consignee + ", " + s_address + ", "
				+ s_money;
	}
	
	
	
}
