package com.service.impl;


import java.util.List;

import com.bean.Sell;
import com.dao.SellDao;
import com.dao.impl.SellDaoImpl;
import com.service.ISellService;

public class SellService implements ISellService{
	SellDao sdao;
	public SellService() {
		sdao =new SellDaoImpl();
	}

	@Override
	public boolean amendSellInfo(Sell sell) {
		
		return sdao.amendSellInfo(sell)>0?true:false ;
	}

	@Override
	public List<Sell> moneySellInfo(String time1, String time2) {

		return sdao.moneySellInfo(time1, time2);
	}

	@Override
	public List<Sell> annualSales(int time) {

		return sdao.annualSales(time);
	}


}
