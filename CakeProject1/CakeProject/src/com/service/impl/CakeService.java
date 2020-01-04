package com.service.impl;

import com.bean.Cake;
import com.dao.CakeDao;
import com.dao.impl.CakeDaoImpl;
import com.service.ICakeService;

public class CakeService implements ICakeService{
	CakeDao cdao;
	public CakeService() {
		cdao =new CakeDaoImpl();
	}
	
	@Override
	public boolean addCakeInfo(Cake cake) {
		
		return cdao.addCakeInfo(cake)>0?true:false;
	}

	@Override
	public boolean removeCakeInfo(String cid) {
		
		return cdao.removeCakeInfo(cid)>0?true:false;
	}

	@Override
	public boolean amendCakeInfo(Cake cake) {
		
		return cdao.amendCakeInfo(cake)>0?true:false;
	}

	@Override
	public Cake selectCakeById(String id) {

		return cdao.selectCakeById(id);
	}

	@Override
	public boolean soldOutCake(Cake Cake) {
		
		return cdao.soldOutCake(Cake)>0?true:false ;
	}

}
