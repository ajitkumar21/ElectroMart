package com.niit.electroMart.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.electroMart.Model.Product;

@SuppressWarnings("deprecation")
@Repository
public class ProductDAOImpl implements ProductDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}


	@Override
	public List<Product> getAllProduct() {
		Session session = sessionFactory.getCurrentSession();
		Query query  = session.createQuery("from Product");
		List<Product> list = query.list();
		
		return list;
	}

	

	

	@Override
	public Product get(String id) {
		Session session = sessionFactory.getCurrentSession();
		Product product = session.get(Product.class, id);
		
		return product;

	}

	@Override
	public Product getProductName(String name) {
		Session session = sessionFactory.getCurrentSession();
		Product product  = session.get(Product.class, name);
		
		return product;

	}

	@Override
	public void addProduct(Product product) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}

	@Override
	public void deleteProduct(String id) {
	Product product = new Product();
		
		product.setId(id);
		
		sessionFactory.getCurrentSession().delete(product);

		
	}
	
	

}
