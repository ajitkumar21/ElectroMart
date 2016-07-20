


package com.niit.electroMart.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.electroMart.Model.User;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}
	
	
	@Override
	public User enableUser(boolean enable) {
		Session session = sessionFactory.getCurrentSession();		
		User user = (User) session.get(User.class, enable);
		
		return user;
	}

	
	@Override
	public User get(String id) {
		Session session = sessionFactory.getCurrentSession();
		User user = (User) session.get(User.class, id);
		return user;
	}

	
	@Override
	public User getByUsername(String email_ID) {
		Session session = sessionFactory.getCurrentSession();
		
		User user = (User) session.get(User.class, email_ID);
		
		return user;
	}

	@Override
	public void addUser(User user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);
	}	

}



