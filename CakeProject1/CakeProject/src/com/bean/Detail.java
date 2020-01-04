package com.bean;

public class Detail {
	/**
	 *  d_id int auto_increment PRIMARY KEY,	#详情编号
		s_id int,		#订单编号
		d_num int		#蛋糕数量
		c_id int,		#蛋糕编号
	 */
	private int d_id;
	private int s_id;
	private int d_num;
	private int c_id;
	public Detail() {
		super();
	}
	public Detail(int d_id, int s_id, int d_num, int c_id) {
		super();
		this.d_id = d_id;
		this.s_id = s_id;
		this.d_num = d_num;
		this.c_id = c_id;
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
	@Override
	public String toString() {
		return d_id + ", " + s_id + ", " + d_num + ", " + c_id;
	}
	
	
	
	
}
