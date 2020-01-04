package com.dao;

import com.bean.User;

public interface InfUserDao {
	/**
	 * 通过编号查询用户信息
	 * @param u_id	用户编号
	 * @return		用户信息
	 */
	User selectUserById(int u_id);
	/**
	 * 通过用户编号修改用户信息的方法
	 * @param user	用户信息
	 * @return		修改的条目数
	 */
	int updateUserById(User user);
}
