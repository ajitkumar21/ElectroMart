package com.niit.electroMart.DAO;

import java.util.List;

import com.niit.electroMart.Model.Category;

public interface CategoryDAO {
	
    public List<Category> getAllCategory();
	
	public Category getCategoryById(String id);
	
	public void addCategory(Category category);
	
	
	
	public void deleteCategory(String id);

}
