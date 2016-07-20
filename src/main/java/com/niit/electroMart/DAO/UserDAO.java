


package com.niit.electroMart.DAO;

import com.niit.electroMart.Model.User;

public interface UserDAO {
	
	public User get(String id);
	
    public User getByUsername(String email_ID);
	
	public void addUser(User user);
	
	public User enableUser(boolean enable);


}
		
		
		
		


	

	
	


