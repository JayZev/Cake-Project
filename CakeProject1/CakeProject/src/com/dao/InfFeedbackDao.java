package com.dao;

import com.bean.Feedback;

public interface InfFeedbackDao {
	/**
	 * 提交反馈信息到数据库的方法
	 */
	public int addMessage(Feedback feedback);
}
