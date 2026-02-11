package com.demo.service;

import java.util.List;

import com.demo.model.Bus;
import com.demo.model.Feedback;

public interface FeedbackService {

	public abstract Feedback submitFeedback(Feedback feedback);
    public abstract List<Feedback> getFeedbackByBus(Long busId);
    public abstract List<Feedback> getAllFeedback(); 
    void saveFeedback(Feedback feedback);
 
	
}
