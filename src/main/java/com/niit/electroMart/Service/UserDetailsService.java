package com.niit.electroMart.Service;

import java.util.List;

import com.niit.electroMart.Model.UserDetails;

public interface UserDetailsService {
	
	  public List<UserDetails> getAllUser();

	  public UserDetails get(String id);

	  public UserDetails getByUsername(String email_ID);

	  public void add(UserDetails user);

	  public void delete(String id);

}
