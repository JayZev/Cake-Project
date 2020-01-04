package com.dao;

import java.sql.ResultSet;

import com.bean.Cake;
import com.bean.Sell;

public interface CakeDao {
	
	/**
	 * 商品信息分页查询的方法
	 * @return 所有商品信息的集合
	 */
	ResultSet getReadScrollResultSet();
	
	/**
	 * 新增商品信息方法
	 * @param cake
	 * @return 新增商品个数
	 */
	int addCakeInfo(Cake cake);
	/**
	 * 按商品id删除商品信息
	 * @param cid
	 * @return 删除商品个数
	 */
	int removeCakeInfo(String cid);
	
	/**
	 * 修改商品信息
	 * @param cid
	 * @return 修改商品个数
	 */
	int amendCakeInfo(Cake Cake);
	
	/**
	 * 按商品id查询商品信息
	 * @param id
	 * @return
	 */
	Cake selectCakeById(String id);
	
	/**
	 * 下架商品的方法
	 * @param Cake
	 * @return
	 */
	int soldOutCake(Cake Cake);
}
