package com.niit.electroMart.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.electroMart.Model.Supplier;

@SuppressWarnings("deprecation")
@Repository
public class SupplierDAOImpl implements SupplierDAO {
	
	@Autowired
	private  SessionFactory  sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Supplier> getAllSupplier() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Supplier");
		List<Supplier> supplier = query.list();
		return supplier;
	}

	@Override
	public Supplier getSupplierById(String id) {
		Session session = sessionFactory.getCurrentSession();
		Supplier supplier = (Supplier)session.get(Supplier.class ,id);
		return supplier;
	}

	@Override
	public void addSupplier(Supplier supplier) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
		
	}

	@Override
	public void deleteSupplier(String id) {
		Supplier supplier = new Supplier();
		supplier.setId(id);
		sessionFactory.getCurrentSession().delete(supplier);

		
	}

	

	

}
