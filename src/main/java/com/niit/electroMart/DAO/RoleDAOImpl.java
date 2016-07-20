package com.niit.electroMart.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.electroMart.Model.Role;

public class RoleDAOImpl implements RoleDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}
	
	
	@Override
	public Role get(String id) {
		
		Session session = sessionFactory.getCurrentSession();
		Role role = (Role) session.get(Role.class, id);

		return role;
	}

	
	@Override
	public Role getByUsername(String email_ID) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Role role = (Role) session.get(Role.class, email_ID);
		
		return role;
	}

	@Override
	public void addUser(Role role) {
		sessionFactory.getCurrentSession().saveOrUpdate(role);
		
	}

	

	
	

	

}
