package com.niit.electroMart.DAO;

import com.niit.electroMart.Model.Role;

public interface RoleDAO {
	
	
	public Role get(String id);
	
	public Role getByUsername(String email_ID);
	
	public void addUser(Role role);

}
