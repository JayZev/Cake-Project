package com.dao;

import com.bean.User;

public interface UserDao {
	public User query(String name, String pwd);
	public int insert(String u_appellation, String pwd, String phone, String sex, String address, String name);
	public int update(User user);
}
