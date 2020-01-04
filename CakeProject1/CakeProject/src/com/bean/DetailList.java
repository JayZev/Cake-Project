package com.bean;

public class DetailList {
	/**
	 * d_id	订单详情编号
	 * s_id	订单编号
	 * d_num 订单详情数量
	 * c_id	蛋糕编号
	 * c_image	蛋糕图片
	 * c_price 蛋糕价格
	 */
	private int d_id;
	private int s_id;
	private int d_num;
	private int c_id;
	private String c_image;
	private String c_name;
	private float c_price;
	public DetailList() {
		super();
	}
	public DetailList(int d_id, int s_id, int d_num, int c_id, String c_image, String c_name, float c_price) {
		super();
		this.d_id = d_id;
		this.s_id = s_id;
		this.d_num = d_num;
		this.c_id = c_id;
		this.c_image = c_image;
		this.c_name = c_name;
		this.c_price = c_price;
	}
	public int getD_id() {
		return d_id;
	}
	public void setD_id(int d_id) {
		this.d_id = d_id;
	}
	public int getS_id() {
		return s_id;
	}
	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	public int getD_num() {
		return d_num;
	}
	public void setD_num(int d_num) {
		this.d_num = d_num;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getC_image() {
		return c_image;
	}
	public void setC_image(String c_image) {
		this.c_image = c_image;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public float getC_price() {
		return c_price;
	}
	public void setC_price(float c_price) {
		this.c_price = c_price;
	}
	@Override
	public String toString() {
		return d_id + ", " + s_id + ", " + d_num + ", " + c_id + ", " + c_image + ", " + c_name + ", " + c_price;
	}
	
	
}
