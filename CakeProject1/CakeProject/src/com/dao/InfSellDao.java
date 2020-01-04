package com.dao;

import java.util.List;

import com.bean.Detail;
import com.bean.Sell;

public interface InfSellDao {
	/**
	 * 插入订单信息 并返回影响行数和插入数据的s_id
	 * @param sell
	 * @return	返回影响行数和插入数据的s_id
	 */
	int insertSell(Sell sell);
	/**
	 * 获取最大的订单编号的方法
	 * @return	最大的订单编号
	 */
	int selectMaxSId();
	/**
	 * 通过用户编号查询订单编号
	 * @param u_id	用户编号
	 * @return		该用户的所有订单
	 */
	List<Sell> selectSellByUId(int u_id);
	/**
	 * 通过订单编号查询订单的方法
	 * @param s_id	订单编号
	 * @return		订单信息
	 */
	Sell selectSellBySId(int s_id);
	/**
	 * 上门取货订单添加的方法
	 * @param sell	订单信息
	 * @return		影响的条目数
	 */
	int addSellByVisit(Sell sell);
	/**
	 * 通过用户编号、第几页、每页数目查询订单的方法
	 * @param u_id		用户编号
	 * @param start		订单开始位置
	 * @param num		每页数目
	 * @return			订单集合
	 */
	List<Sell> selectSellByUIdAndPaging(int u_id, int start, int num);
}
