package com.service.impl;

import java.util.List;

import com.bean.Sell;
import com.dao.InfSellDao;
import com.dao.impl.ImplSellDao;
import com.service.InfSellService;

public class ImplSellService implements InfSellService{
	private InfSellDao sellDao;
	public ImplSellService() {
		sellDao = new ImplSellDao();
	}
	
	@Override
	public int insertSell(Sell sell) {
		// TODO Auto-generated method stub
		return sellDao.insertSell(sell);
	}

	@Override
	public int selectMaxSId() {
		// TODO Auto-generated method stub
		return sellDao.selectMaxSId();
	}

	@Override
	public List<Sell> selectSellByUId(int u_id) {
		// TODO Auto-generated method stub
		return sellDao.selectSellByUId(u_id);
	}

	@Override
	public Sell selectSellBySId(int s_id) {
		// TODO Auto-generated method stub
		return sellDao.selectSellBySId(s_id);
	}

	@Override
	public int addSellByVisit(Sell sell) {
		// TODO Auto-generated method stub
		return sellDao.addSellByVisit(sell);
	}

	@Override
	public List<Sell> selectSellByUIdAndPaging(int u_id, int start, int num) {
		// TODO Auto-generated method stub
		return sellDao.selectSellByUIdAndPaging(u_id, start, num);
	}

	@Override
	public int selectTotalSellByUId(int u_id) {
		// TODO Auto-generated method stub
		return sellDao.selectSellByUId(u_id).size();
	}
	
	
}
