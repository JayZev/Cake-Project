package com.bean;

public class SellList {
	private int s_id;//订单编号
	private String s_consignee;//收件人姓名
	private String s_sex; //收件人性别
	private String s_address;//收件人地址
	private String s_time; //下单时间
	private String c_name;//蛋糕名称
	private int d_num;//蛋糕数量
	private float s_money;//订单金额
	private String s_phone;//联系方式
	private String s_predict;//预计送达时间
	private String s_actual;//实际送达时间
	private String s_condition;//订单状态
	
	public SellList() {
		super();
	}

	public SellList(int s_id, String s_consignee, String s_sex, String s_address, String s_time, String c_name,
			int d_num, float s_money, String s_phone, String s_predict, String s_actual, String s_condition) {
		super();
		this.s_id = s_id;
		this.s_consignee = s_consignee;
		this.s_sex = s_sex;
		this.s_address = s_address;
		this.s_time = s_time;
		this.c_name = c_name;
		this.d_num = d_num;
		this.s_money = s_money;
		this.s_phone = s_phone;
		this.s_predict = s_predict;
		this.s_actual = s_actual;
		this.s_condition = s_condition;
	}

	public int getS_id() {
		return s_id;
	}

	public void setS_id(int s_id) {
		this.s_id = s_id;
	}

	public String getS_consignee() {
		return s_consignee;
	}

	public void setS_consignee(String s_consignee) {
		this.s_consignee = s_consignee;
	}

	public String getS_sex() {
		return s_sex;
	}

	public void setS_sex(String s_sex) {
		this.s_sex = s_sex;
	}

	public String getS_address() {
		return s_address;
	}

	public void setS_address(String s_address) {
		this.s_address = s_address;
	}

	public String getS_time() {
		return s_time;
	}

	public void setS_time(String s_time) {
		this.s_time = s_time;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public int getD_num() {
		return d_num;
	}

	public void setD_num(int d_num) {
		this.d_num = d_num;
	}

	public float getS_money() {
		return s_money;
	}

	public void setS_money(float s_money) {
		this.s_money = s_money;
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

	public String getS_condition() {
		return s_condition;
	}

	public void setS_condition(String s_condition) {
		this.s_condition = s_condition;
	}

	@Override
	public String toString() {
		return "SellList [s_id=" + s_id + ", s_consignee=" + s_consignee + ", s_sex=" + s_sex + ", s_address="
				+ s_address + ", s_time=" + s_time + ", c_name=" + c_name + ", d_num=" + d_num + ", s_money=" + s_money
				+ ", s_phone=" + s_phone + ", s_predict=" + s_predict + ", s_actual=" + s_actual + ", s_condition="
				+ s_condition + "]";
	}
	
	
	
	
}
