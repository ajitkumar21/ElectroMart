package com.niit.electroMart.Service;

import com.niit.electroMart.Model.User;

public interface UserService {
	
	public User get(String id);


	public User getByUsername(String email_ID);
	
	public void addUser(User user);
	
}
