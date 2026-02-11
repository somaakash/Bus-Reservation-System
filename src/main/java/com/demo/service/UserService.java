package com.demo.service;

import com.demo.model.User;

public interface UserService {
	public abstract User register(User user);
    public abstract User login(String username, String password);

}
