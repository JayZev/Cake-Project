package com.bean;

public class CheckoutList {
	private String detail;
	private String address;
	private String name;
	private String sex;
	private String phone;
	private String time;
	private float money;
	private float freight;
	public CheckoutList() {
		super();
	}
	public CheckoutList(String detail, String address, String name, String sex, String phone, String time, float money,
			float freight) {
		super();
		this.detail = detail;
		this.address = address;
		this.name = name;
		this.sex = sex;
		this.phone = phone;
		this.time = time;
		this.money = money;
		this.freight = freight;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public float getMoney() {
		return money;
	}
	public void setMoney(float money) {
		this.money = money;
	}
	public float getFreight() {
		return freight;
	}
	public void setFreight(float freight) {
		this.freight = freight;
	}
	@Override
	public String toString() {
		return detail + ", " + address + ", " + name + ", " + sex + ", " + phone + ", " + time + ", " + money + ", "
				+ freight;
	}
	
}
