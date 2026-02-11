package com.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.demo.model.Feedback;
@Repository
public interface FeedbackDao extends JpaRepository<Feedback, Long> {
	List<Feedback> findByBus_BusId(Long busId);
	

}
