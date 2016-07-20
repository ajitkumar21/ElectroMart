package com.niit.electroMart.Service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.electroMart.DAO.RoleDAO;
import com.niit.electroMart.Model.Role;

@Service
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleDAO roleDAO;
	
	public void setRoleDAO(RoleDAO roleDao){
		this.roleDAO = roleDao;
	}
	
	@Override
	@Transactional
	public Role get(String id) {
		return this.roleDAO.get(id);
	}

	
	
	@Override
	@Transactional
	public Role getByUsername(String email_ID) {
		return this.roleDAO.getByUsername(email_ID);
	}

	@Override
	@Transactional
	public void addUser(Role role) {
		this.roleDAO.addUser(role);
	}

}
