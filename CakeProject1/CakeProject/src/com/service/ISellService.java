package com.service;

import java.util.List;

import com.bean.Sell;

public interface ISellService {
	
	/**
	 * 转接dao层处理订单的方法
	 * @param sell
	 * @return
	 */
	boolean amendSellInfo(Sell sell);
	
	/**
	 * 转接dao层便利按时间查询订单金额方法
	 * @param time1  起始时间
	 * @param time2  结束时间
	 * @return
	 */
	List<Sell> moneySellInfo(String time1,String time2);
	
	/**
	 * 转接dao层查询2019年的月销量 方法
	 * @param time1
	 * @param time2
	 * @return
	 */
	List<Sell> annualSales(int time);
}
