package com.bean;

public class Manage {

	/**
	 *  m_id		#后台用户编号
		m_account	#后台用户的账号
		m_pwd VARCHAR(30)	#后台用户的密码
		m_phone VARCHAR(11)	#后台用户手机
	 */
	private int m_id;		
	private String m_account;
	private String m_pwd;
	private String m_phone;
	public Manage() {
		super();
	}
	public Manage(String m_account, String m_pwd) {
		super();
		this.m_account = m_account;
		this.m_pwd = m_pwd;
	}
	public Manage(int m_id, String m_account, String m_pwd, String m_phone) {
		super();
		this.m_id = m_id;
		this.m_account = m_account;
		this.m_pwd = m_pwd;
		this.m_phone = m_phone;
	}
	public int getM_id() {
		return m_id;
	}
	public void setM_id(int m_id) {
		this.m_id = m_id;
	}
	public String getM_account() {
		return m_account;
	}
	public void setM_account(String m_account) {
		this.m_account = m_account;
	}
	public String getM_pwd() {
		return m_pwd;
	}
	public void setM_pwd(String m_pwd) {
		this.m_pwd = m_pwd;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	@Override
	public String toString() {
		return m_id + ", " + m_account + ", " + m_pwd + ", " + m_phone;
	}
	
}
