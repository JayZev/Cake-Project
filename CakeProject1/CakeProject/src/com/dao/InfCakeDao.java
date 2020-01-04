package com.dao;

import java.util.List;
import java.util.Map;

import com.bean.Cake;

public interface InfCakeDao {
	/**
	 * 查询所有蛋糕的方法
	 * @return	所有蛋糕的集合
	 */
	List<Cake> selectAllCake();
	/**
	 * 查询确定页数的蛋糕的方法
	 * @param index 第几页
	 * @param num 每一页的数目
	 * @return	所有蛋糕的集合
	 */
	List<Cake> selectAllCakeByPaging(int index, int num);
	/**
	 * 根据类型查询蛋糕类型
	 * @param type	蛋糕类型
	 * @return	
	 */
	List<Cake> selectCakeByTypeAndPaging(String type,int index, int num);
	/**
	 * 通过条件查询蛋糕
	 * @param map 蛋糕的条件
	 * @return	返回符合条件的蛋糕
	 */
	List<Cake> selectCakeByCondition(Map<String, List<String>> map);
	/**
	 * 通过条件查询蛋糕
	 * @param map 蛋糕的条件
	 * @param index 第几页
	 * @param num 每一页的数目
	 * @return	返回符合条件的蛋糕
	 */
	List<Cake> selectCakeByConditionByPaging(Map<String, List<String>> map,int index, int num);
	/**
	 * 根据类型查询蛋糕
	 * @param type	蛋糕类型
	 * @return		返回符合条件的蛋糕
	 */
	List<Cake> selectCakeByType(String type);
	/**
	 * 根据编号查询蛋糕信息
	 * @param c_id	蛋糕编号
	 * @return		蛋糕信息
	 */
	Cake selectCakeById(int c_id);
}
