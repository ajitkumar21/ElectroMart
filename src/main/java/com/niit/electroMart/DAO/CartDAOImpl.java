package com.niit.electroMart.DAO;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.electroMart.Model.Cart;


@Repository
public class CartDAOImpl implements CartDAO {
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}


	@Override
	public void addCart(Cart cart) {
		this.sessionFactory.getCurrentSession().saveOrUpdate(cart);

	}

	@Override
	public void deleteCart(Cart cart) {
		this.sessionFactory.getCurrentSession().delete(cart);


	}

}
