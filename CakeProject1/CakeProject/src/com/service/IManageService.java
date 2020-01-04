package com.service;

import com.bean.Manage;

public interface IManageService {
	
	/**
	 * 转接dao层匹配效验信息
	 * @param account 账户名
	 * @param pwd 密码
	 * @return
	 */
	boolean validateNameAndPwd(String account, String pwd);
	
	/**
	 * 转接dao层获得管理员对象
	 * @param account 账户名
	 * @return
	 */
	Manage getAdminInfo(String account);
	
	/**
	 * 转接dao层 按用户名修改密码
	 * @param manage
	 * @return
	 */
	boolean settingManage(Manage manage);
}
