package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.FeedbackDao;
import com.demo.model.Feedback;
import com.demo.service.FeedbackService;

@Service
public class FeedbackServiceImpl implements FeedbackService {

    @Autowired
    private FeedbackDao feedbackDao;

    @Override
    public Feedback submitFeedback(Feedback feedback) {
        return feedbackDao.save(feedback);
    }

    @Override
    public List<Feedback> getFeedbackByBus(Long busId) {
        return feedbackDao.findByBus_BusId(busId);
    }
    @Override
    public List<Feedback> getAllFeedback() {
        return feedbackDao.findAll();
    }

	@Override
	public void saveFeedback(Feedback feedback) {
		
		feedbackDao.save(feedback);
		
	}
}
