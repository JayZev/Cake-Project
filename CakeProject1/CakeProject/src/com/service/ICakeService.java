package com.service;

import com.bean.Cake;

public interface ICakeService {
	/**
	 * 转接dao层新增商品信息方法
	 * @param cake
	 * @return 
	 */
	boolean addCakeInfo(Cake cake);
	
	/**
	 * 转接dao层删除商品信息方法
	 * @param cid
	 * @return
	 */
	boolean removeCakeInfo(String cid);
	
	/**
	 * 转接dao层修改商品信息方法
	 * @param cake
	 * @return
	 */
	boolean amendCakeInfo(Cake cake);
	
	/**
	 * 转接dao层按商品id查询商品信息
	 * @param id 
	 * @return 
	 */
	Cake selectCakeById(String id);
	
	/**
	 * 转接dao层下架商品的方法
	 * @param Cake
	 * @return
	 */
	boolean soldOutCake(Cake Cake);
}
