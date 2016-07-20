package com.niit.electroMart.Service;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.electroMart.DAO.CategoryDAO;
import com.niit.electroMart.Model.Category;

@Service
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	public void setCategoryDAO(CategoryDAO categoryDAO){
		this.categoryDAO = categoryDAO;
	}

	@Override
	@Transactional
	public List<Category> getAllCategory() {
		
		return this.categoryDAO.getAllCategory();
	}


	@Override
	@Transactional
	public Category getCategoryById(String id) {
		
		return this.categoryDAO.getCategoryById(id);
	}

	@Override
	@Transactional
	public void addCategory(Category category) {
		this.categoryDAO.addCategory(category);
		
	}

	

	@Override
	@Transactional
	public void deleteCategory(String id) {
		this.categoryDAO.deleteCategory(id);
		
	}
	
	
	
	@Override
	@Transactional
	public Map<String, String> getCategories(){
		List<Category> categoryList = this.categoryDAO.getAllCategory();
		
		Map<String, String> categories = new LinkedHashMap<String, String>();
		
		for (Category category : categoryList) {
			categories.put(category.getId(), category.getName());
		}
		
		return categories;
	}


}
