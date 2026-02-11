package com.demo.service;

import java.util.List;

import com.demo.model.Admin;
import com.demo.model.Bus;
import com.demo.model.Feedback;
import com.demo.model.Reservation;
import com.demo.model.Route;

public interface AdminService {
	public abstract Admin loginAdmin(String username, String password);


}
