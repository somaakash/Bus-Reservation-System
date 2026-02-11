package com.demo.dao;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.demo.model.User;

@Repository
public interface UserDao extends JpaRepository<User, Long>{
	User findByUsernameAndPassword(String username, String password);			//This is used for User Login and Registration
	//It returns a single User object if found, or null if the username doesn't exist.

}
