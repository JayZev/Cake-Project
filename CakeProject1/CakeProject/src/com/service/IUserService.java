package com.service;

import com.bean.User;

public interface IUserService {
	public boolean isLogin(String name, String pwd);

	public boolean addUser(String name, String pwd,String phone, String sex, String address, String u_appellation);
	
	public int updateUser(User user);
	
	public User query(String name, String pwd);
}
