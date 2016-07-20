package com.niit.electroMart.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.electroMart.Model.Category;



@SuppressWarnings("deprecation")
@Repository
public class CategoryDAOImpl implements CategoryDAO {
	
	@Autowired
	private  SessionFactory  sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Category> getAllCategory() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Category");
		List<Category> Category = query.list();
		return Category;
	}

	@Override
	public Category getCategoryById(String id) {
		Session session = sessionFactory.getCurrentSession();
		Category category = (Category)session.get(Category.class ,id);
		return category;
	}

	@Override
	public void addCategory(Category category) {
		sessionFactory.getCurrentSession().saveOrUpdate(category);
		
	}

	

	@Override
	public void deleteCategory(String id) {
		Category categoryDelete = new Category();
		categoryDelete.setId(id);
		sessionFactory.getCurrentSession().delete(categoryDelete);
		
	}

}
