package com.service.impl;

import com.bean.Feedback;
import com.dao.InfFeedbackDao;
import com.service.InfFeedbackService;

public class ImplFeedbackService implements InfFeedbackService{
	
	InfFeedbackDao fDao;
	public int addMessage(Feedback feedback) {
		
		return fDao.addMessage(feedback);
	}

}
