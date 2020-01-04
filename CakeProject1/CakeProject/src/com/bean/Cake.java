package com.bean;

public class Cake {
	/**
	 *  c_id int auto_increment PRIMARY KEY,	#蛋糕编号
		c_name VARCHAR(30),						#蛋糕名字
		c_image VARCHAR(500),					#蛋糕图片
		c_price FLOAT,								#蛋糕价格
		c_type VARCHAR(30),						#蛋糕类别
		c_weight FLOAT,								#蛋糕重量
		c_taste VARCHAR(20),					#蛋糕口味
		c_color VARCHAR(20),					#蛋糕颜色
		c_introduce VARCHAR(500)			#蛋糕介绍
	 */
	private int c_id;
	private String c_name;
	private String c_image;
	private float c_price;
	private String c_type;
	private float c_weight;
	private String c_taste;
	private String c_color;
	private String c_introduce;
	private String c_description;
	private String c_state;
	public Cake() {
		super();
	}
	
	public Cake(int c_id) {
		super();
		this.c_id = c_id;
	}

	public Cake(int c_id, String c_name, String c_image, float c_price, String c_type, float c_weight, String c_taste,
			String c_color, String c_introduce, String c_description, String c_state) {
		super();
		this.c_id = c_id;
		this.c_name = c_name;
		this.c_image = c_image;
		this.c_price = c_price;
		this.c_type = c_type;
		this.c_weight = c_weight;
		this.c_taste = c_taste;
		this.c_color = c_color;
		this.c_introduce = c_introduce;
		this.c_description = c_description;
		this.c_state = c_state;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_image() {
		return c_image;
	}
	public void setC_image(String c_image) {
		this.c_image = c_image;
	}
	public float getC_price() {
		return c_price;
	}
	public void setC_price(float c_price) {
		this.c_price = c_price;
	}
	public String getC_type() {
		return c_type;
	}
	public void setC_type(String c_type) {
		this.c_type = c_type;
	}
	public float getC_weight() {
		return c_weight;
	}
	public void setC_weight(float c_weight) {
		this.c_weight = c_weight;
	}
	public String getC_taste() {
		return c_taste;
	}
	public void setC_taste(String c_taste) {
		this.c_taste = c_taste;
	}
	public String getC_color() {
		return c_color;
	}
	public void setC_color(String c_color) {
		this.c_color = c_color;
	}
	public String getC_introduce() {
		return c_introduce;
	}
	public void setC_introduce(String c_introduce) {
		this.c_introduce = c_introduce;
	}
	public String getC_description() {
		return c_description;
	}
	public void setC_description(String c_description) {
		this.c_description = c_description;
	}
	public String getC_state() {
		return c_state;
	}
	public void setC_state(String c_state) {
		this.c_state = c_state;
	}
	@Override
	public String toString() {
		return c_id + ", " + c_name + ", " + c_image + ", " + c_price + ", " + c_type + ", " + c_weight + ", " + c_taste
				+ ", " + c_color + ", " + c_introduce + ", " + c_description + ", " + c_state;
	}
	
	
	
}
