package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.AdminDao;
import com.demo.dao.BusDao;
import com.demo.dao.FeedbackDao;
import com.demo.dao.ReservationDao;
import com.demo.dao.RouteDao;
import com.demo.model.Admin;
import com.demo.model.Bus;
import com.demo.model.Feedback;
import com.demo.model.Reservation;
import com.demo.model.Route;
@Service
public class AdminServiceImpl implements AdminService{
	 @Autowired
	  private AdminDao adminDao;
	@Override
	public Admin loginAdmin(String username, String password) {
		
		return adminDao.findByAdminUsernameAndAdminPassword(username, password);
	}
	
 

}
