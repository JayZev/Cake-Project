package com.dao;

import java.util.List;

import com.bean.Cake;
import com.bean.Car;
import com.bean.CartList;

public interface InfCarDao {
	/**
	 * 添加信息进购物车
	 * @param c	购物信息
	 * @return	返回添加的条数
	 */
	int insertCake(Car c);
	/**
	 * 通过用户编号查询购物车信息
	 * @param u_id	用户编号
	 * @return		返回购物车信息
	 */
	List<CartList> selectCarByUId(int u_id);
	/**
	 * 根据购物车编号更新购买数量的方法
	 * @param car_id	购物信息编号
	 * @param num		购买数量
	 * @return			更新的数量
	 */
	int updateCarByCarId(int car_id, int num);
	/**
	 * 根据购物车信息编号
	 * @param car_id	购物信息编号
	 * @return	删除的条目数
	 */
	int delteCarByCarId(int car_id);
	/**
	 * 查询购物车中数量最多的前top个
	 * @param top	数目
	 * @return		数量最多的前top个的集合
	 */
	List<Integer> selectCarTop(int top);
	/**
	 * 根据购物信息编号增加购物数量
	 * @param car_id	购物信息编号
	 * @param num		增加的数量
	 * @return			影响的条目数
	 */
	int addCarNumByCarId(int car_id, int num);
	/**
	 * 通过购物车编号查询购物车信息
	 * @param car_id	购物车编号
	 * @return			购物车信息s
	 */
	Car selectCarByCarId(int car_id);
	/**
	 * 通过用户编号和蛋糕编号查询蛋糕的方法
	 * @param u_id
	 * @param c_id
	 * @return
	 */
	Car selectCakeByUIdAndCId(int u_id, int c_id);
	/**
	 * 通过用户编号和蛋糕编号修改蛋糕数量的方法
	 * @param u_id	用户编号	
	 * @param c_id	蛋糕编号
	 * @param car_num	蛋糕数量
	 * @return		影响的行数
	 */
	int updateCakeByUIdAndCid(int u_id, int c_id, int car_num);
	
}
