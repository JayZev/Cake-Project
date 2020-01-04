package com.bean;

public class User {
	/**
	 *  u_id int auto_increment PRIMARY KEY,	#前台用户编号
		u_phone VARCHAR(11),		#用户手机号[用于登陆的账号]
		u_pwd VARCHAR(30),			#用户密码
		u_name VARCHAR(50),			#用户姓名
		u_sex CHAR(2),					#用户性别
		u_address VARCHAR(200)	#用户地址
	 */
	private int u_id;
	private String u_phone;
	private String u_pwd;
	private String u_name;
	private String u_sex;
	private String u_address;
	private String u_appellation;
	public User() {
		super();
	}
	public User(int u_id, String u_phone, String u_pwd, String u_name, String u_sex, String u_address, String u_appellation) {
		super();
		this.u_id = u_id;
		this.u_phone = u_phone;
		this.u_pwd = u_pwd;
		this.u_name = u_name;
		this.u_sex = u_sex;
		this.u_address = u_address;
		this.u_appellation = u_appellation;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getU_phone() {
		return u_phone;
	}
	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}
	public String getU_pwd() {
		return u_pwd;
	}
	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_sex() {
		return u_sex;
	}
	public void setU_sex(String u_sex) {
		this.u_sex = u_sex;
	}
	public String getU_address() {
		return u_address;
	}
	public void setU_address(String u_address) {
		this.u_address = u_address;
	}
	
	public String getU_appellation() {
		return u_appellation;
	}
	public void setU_appellation(String u_appellation) {
		this.u_appellation = u_appellation;
	}
	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", u_phone=" + u_phone + ", u_pwd=" + u_pwd + ", u_name=" + u_name + ", u_sex="
				+ u_sex + ", u_address=" + u_address + ", u_appellation=" + u_appellation + "]";
	}
	
}
