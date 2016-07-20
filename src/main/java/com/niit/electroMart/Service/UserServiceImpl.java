package com.niit.electroMart.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.electroMart.DAO.UserDAO;
import com.niit.electroMart.Model.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	
	public void setUserDAO(UserDAO userDao){
		this.userDAO = userDao;
	}
	
	@Override
	@Transactional
	public User get(String id) {
		return this.userDAO.get(id);
	}

	
	
	@Override
	@Transactional
	public User getByUsername(String email_ID) {
		
		return this.userDAO.getByUsername(email_ID);
	}

	@Override
	@Transactional
	public void addUser(User user) {
		this.userDAO.addUser(user);
	}

}
