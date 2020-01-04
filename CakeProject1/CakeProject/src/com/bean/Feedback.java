package com.bean;

public class Feedback {
	/**
	 *  	f_id int auto_increment PRIMARY KEY,  #反馈编号
            name VARCHAR(12),                     #反馈用户姓名
            email varchar(20),                    #反馈用户email
            telephone varchar(11),                #反馈用户电话
	        f_content VARCHAR(1000),			  #反馈内容
	        f_time dateTime						  #反馈时间
		
	 */
	private int f_id;
	private String f_name;
	private String f_content;
	private String f_time;
	private String f_email;
	private String f_telephone;
	public Feedback() {
		super();
	}
	public Feedback(int f_id,String f_name, String f_content, String f_time,String f_email,String f_telephone) {
		super();
		this.f_id = f_id;
		this.f_name = f_name;
		this.f_content = f_content;
		this.f_time = f_time;
		this.f_email = f_email;
		this.f_telephone = f_telephone;
	}
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public String getF_email() {
		return f_email;
	}
	public void setF_email(String f_email) {
		this.f_email = f_email;
	}
	public String getF_telephone() {
		return f_telephone;
	}
	public void setF_telephone(String f_telephone) {
		this.f_telephone = f_telephone;
	}
	public int getF_id() {
		return f_id;
	}
	public void setF_id(int f_id) {
		this.f_id = f_id;
	}
	
	public String getF_content() {
		return f_content;
	}
	public void setF_content(String f_content) {
		this.f_content = f_content;
	}
	public String getF_time() {
		return f_time;
	}
	public void setF_time(String f_time) {
		this.f_time = f_time;
	}
	@Override
	public String toString() {
		return f_id + ", "  + ", " + f_content + ", " + f_time;
	}
	
}
