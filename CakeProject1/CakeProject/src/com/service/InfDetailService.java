package com.service;

import java.util.List;

import com.bean.Detail;
import com.bean.DetailList;

public interface InfDetailService {

	/**
	 * 插入订单详情信息
	 * @param d	订单详情信息
	 * @return	影响的行数
	 */
	int insertDetail(Detail d);
	/**
	 * 根据订单编号查询订单详情
	 * @param s_id
	 * @return
	 */
	List<DetailList> selectDetailBySId(int s_id);
	/**
	 * 通过订单编号和开始位置和结束位置查询订单详情的方法
	 * @param s_id	
	 * @param index
	 * @return
	 */
	List<DetailList> selectDetailBySIdAndPaging(int s_id, int start, int num);
	/**
	 * 通过订单编号查询订单详情信息
	 * @param s_id	订单编号
	 * @return		订单详情编号
	 */
	int selectTotalDetailBySId(int s_id);
}
