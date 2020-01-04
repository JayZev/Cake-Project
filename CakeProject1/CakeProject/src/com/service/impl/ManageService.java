package com.service.impl;

import com.bean.Manage;
import com.dao.ManageDao;
import com.dao.impl.ManageDaoImpl;
import com.service.IManageService;

public class ManageService implements IManageService{
	ManageDao mdao;
	public ManageService() {
		mdao =new ManageDaoImpl();
	}
	@Override
	public boolean validateNameAndPwd(String account, String pwd) {
		
		return mdao.validateNameAndPwd(account, pwd);
	}
	@Override
	public Manage getAdminInfo(String account) {
		
		return mdao.getAdminInfo(account);
	}
	@Override
	public boolean settingManage(Manage manage) {

		return mdao.settingManage(manage)>0?true:false;
	}
	
	
}
