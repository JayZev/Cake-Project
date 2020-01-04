package com.dao;

import com.bean.Manage;

public interface ManageDao {
	/**
	 * 效验管理员账号和密码是否匹配
	 * @param account 管理员账号
	 * @param pwd 管理员密码
	 * @return
	 */
	boolean validateNameAndPwd(String account, String pwd);
	
	/**
	 * 获得管理员对象信息
	 * @param account 管理员的用户名
	 * @return
	 */
	Manage getAdminInfo(String account);
	
	/**
	 * 按用户名修改密码
	 * @return
	 */
	int settingManage(Manage manage);
}
