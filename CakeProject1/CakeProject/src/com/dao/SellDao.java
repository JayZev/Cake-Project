package com.dao;

import java.sql.ResultSet;
import java.util.List;

import com.bean.Sell;

public interface SellDao {
	
	/**
	 *历史 订单信息分页查询的方法
	 * @return 所有订单信息的集合
	 */
	ResultSet getReadScrollResultSet();
	
	/**
	 * 待处理订单信息分页查询的方法
	 * @return 所有订单信息的集合
	 */
	ResultSet getReadScrollResultSet2();
	
	/**
	 * 处理订单的方法
	 * @param sell
	 * @return
	 */
	int amendSellInfo(Sell sell);
	
	/**
	 * 便利按时间查询订单金额方法
	 * @param time1 起始时间
	 * @param time2 结束时间
	 * @return
	 */
	List<Sell> moneySellInfo(String time1,String time2);
	
	/**
	 *查询2019年的月销量 
	 * @param time1 年限
	 * @return 
	 */
	List<Sell> annualSales(int time);
}
