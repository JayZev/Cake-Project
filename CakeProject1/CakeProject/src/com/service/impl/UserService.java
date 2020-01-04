package com.service.impl;

import com.bean.User;
import com.dao.UserDao;
import com.dao.impl.UserDaoImpl;
import com.service.IUserService;

public class UserService implements IUserService {
	UserDao udao;
	public UserService() {
		udao=new UserDaoImpl();
	}
	
	public boolean isLogin(String name, String pwd) {
		if(null != udao.query(name, pwd)) {
			return true;
		}
		return false;
	}

	public boolean addUser(String name, String pwd,String phone, String sex, String address, String u_appellation) {
		return udao.insert(name, pwd ,phone,sex,address, u_appellation)>0 ? true:false;
	}

	@Override
	public int updateUser(User user) {
		return udao.update(user);
	}

	@Override
	public User query(String name, String pwd) {
		// TODO Auto-generated method stub
		return udao.query(name, pwd);
	}
}
