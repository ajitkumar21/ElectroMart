package com.niit.electroMart.Service;

import com.niit.electroMart.Model.Role;

public interface RoleService {
	
	public Role get(String id);
	
	public Role getByUsername(String email_ID);
	
	public void addUser(Role role);
}
