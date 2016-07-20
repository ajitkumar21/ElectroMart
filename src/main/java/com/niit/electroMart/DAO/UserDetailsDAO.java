


package com.niit.electroMart.DAO;


import java.util.List;

import com.niit.electroMart.Model.UserDetails;


public interface UserDetailsDAO {
	
  public List<UserDetails> getAllUser();

  public UserDetails get(String id);

  public UserDetails getByUsername(String email_ID);

  public void add(UserDetails user);

  public void delete(String id);

}
		
		
		
		


	

	
	


