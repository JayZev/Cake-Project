package com.service.impl;


import com.bean.Feedback;
import com.dao.FeedbackDao;
import com.dao.impl.FeedbackDaoImpl;
import com.service.IFeedbackService;

public class FeedbackService implements IFeedbackService {
	FeedbackDao fdao =null;
	public FeedbackService() {
		fdao = new FeedbackDaoImpl();
	}
	@Override
	public Feedback selectFeedbackById(String fid) {
		
		return fdao.selectFeedbackById(fid);
	}
	
	
}
