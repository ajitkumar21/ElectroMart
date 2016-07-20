package com.niit.electroMart.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.electroMart.Model.CartItem;


@Repository
public class CartItemDAOImpl implements CartItemDAO {
	
	
	@Autowired
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory; 
	}


	@Override
	public List<CartItem> getAllItem() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from CartItem");
		
		List<CartItem> cartItem = query.list();
		
		return cartItem;

	}

	@Override
	public List<CartItem> getItemByUserId(String userId) {
		Session session = sessionFactory.getCurrentSession();
		
		Query query = session.createQuery("from CartItem as c where c.userId = ?");
		
		query.setParameter(0, userId);
		
		return (List<CartItem>) query.list();
	}


	@Override
	public void addCartItem(CartItem cartItem) {
		this.sessionFactory.getCurrentSession().saveOrUpdate(cartItem);

	}

	@Override
	public void deleteCartItem(int id) {
		
		CartItem cartItem = new CartItem();
	     cartItem.setId(id);
	     
		this.sessionFactory.getCurrentSession().delete(cartItem);

	}

}
