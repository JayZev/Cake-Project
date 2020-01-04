package com.dao;

import java.sql.ResultSet;

import com.bean.Cake;
import com.bean.Feedback;


public interface FeedbackDao {

	/**
	 * 用户反馈分页查询的方法
	 * @return 所有用户反馈的集合
	 */
	ResultSet getReadScrollResultSet();
	
	/**
	 * 按id查询反馈信息
	 * @param id
	 * @return
	 */
	Feedback selectFeedbackById(String fid);
}
