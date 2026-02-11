package com.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.UserDao;
import com.demo.model.User;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
    private UserDao userDao;
	
	@Override
	public User register(User user) {
	
		return userDao.save(user);
	}

	@Override
	public User login(String username, String password) {
	
		return userDao.findByUsernameAndPassword(username, password);
	}

}
