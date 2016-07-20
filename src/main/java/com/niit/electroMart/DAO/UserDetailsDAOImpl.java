


package com.niit.electroMart.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.electroMart.Model.UserDetails;





@SuppressWarnings("deprecation")
@Repository
public class UserDetailsDAOImpl implements UserDetailsDAO {
	
	@Autowired
	private  SessionFactory  sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory){
	this.sessionFactory = sessionFactory;
}

	@Override
	public List<UserDetails> getAllUser() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from USER_DETAILS");
		List<UserDetails> user = query.list();
		return user;
	}

	@Override
	public UserDetails get(String id) {
		Session session = sessionFactory.getCurrentSession();
		UserDetails user = (UserDetails)session.get(UserDetails.class, id);
		return user;
	}

	@Override
	public UserDetails getByUsername(String email_ID) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from UserDetails as u where u.email_Id=?");
		query.setParameter(0, email_ID);
		return (UserDetails)query.uniqueResult();
	}

	@Override
	public void add(UserDetails user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		
		
		
	}

	@Override
	public void delete(String id) {
		UserDetails userDelete = new UserDetails();
		userDelete.setId(id);
		sessionFactory.getCurrentSession().delete(userDelete);
		
	}	

}



