package com.service;

import java.util.List;

import com.bean.Feedback;

public interface IFeedbackService {
	
	/**
	 * 转接dao层查询反馈信息
	 * @param fid
	 * @return
	 */
	Feedback selectFeedbackById(String fid);
}
