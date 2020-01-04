package com.bean;

public class Car {
	/**
	 *  car_id int auto_increment PRIMARY KEY,	#购物车编号
		u_id int,				#用户编号
		c_id int,				#蛋糕编号
		car_num int			#蛋糕数量
	 */
	private int car_id;
	private int u_id;
	private int c_id;
	private int car_num;
	public Car() {
		super();
	}
	public Car(int car_id, int u_id, int c_id, int car_num) {
		super();
		this.car_id = car_id;
		this.u_id = u_id;
		this.c_id = c_id;
		this.car_num = car_num;
	}
	public int getCar_id() {
		return car_id;
	}
	public void setCar_id(int car_id) {
		this.car_id = car_id;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public int getCar_num() {
		return car_num;
	}
	public void setCar_num(int car_num) {
		this.car_num = car_num;
	}
	@Override
	public String toString() {
		return car_id + ", " + u_id + ", " + c_id + ", " + car_num;
	}
	
}
