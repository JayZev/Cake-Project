package com.bean;

public class CartList {
	/**
	 * car_id	购物车信息编号
	 * c_image	蛋糕图片地址
	 * c_name	蛋糕名字
	 * car_num	蛋糕数量
	 * c_price	蛋糕价格
	 */
	private int car_id;
	private String c_image;
	private String c_name;
	private int car_num;
	private float c_price;
	private int c_id;
	public CartList() {
		super();
	}
	public CartList(int car_id, String c_image, String c_name, int car_num, float c_price, int c_id) {
		super();
		this.car_id = car_id;
		this.c_image = c_image;
		this.c_name = c_name;
		this.car_num = car_num;
		this.c_price = c_price;
		this.c_id = c_id;
	}
	public int getCar_id() {
		return car_id;
	}
	public void setCar_id(int car_id) {
		this.car_id = car_id;
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
	public int getCar_num() {
		return car_num;
	}
	public void setCar_num(int car_num) {
		this.car_num = car_num;
	}
	public float getC_price() {
		return c_price;
	}
	public void setC_price(float c_price) {
		this.c_price = c_price;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	@Override
	public String toString() {
		return car_id + ", " + c_image + ", " + c_name + ", " + car_num + ", " + c_price + ", " + c_id;
	}
	
	
}
