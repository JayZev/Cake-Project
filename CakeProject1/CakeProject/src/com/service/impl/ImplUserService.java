package com.service.impl;

import com.bean.User;
import com.dao.InfUserDao;
import com.dao.impl.ImplUserDao;
import com.service.InfUserService;

public class ImplUserService implements InfUserService {
	private InfUserDao uDao;
	public ImplUserService() {
		uDao = new ImplUserDao();
	}
	@Override
	public User selectUserById(int u_id) {
		// TODO Auto-generated method stub
		return uDao.selectUserById(u_id);
	}
	@Override
	public int updateUserById(User user) {
		// TODO Auto-generated method stub
		return uDao.updateUserById(user);
	}

}
