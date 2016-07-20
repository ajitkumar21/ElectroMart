package com.niit.electroMart.Service;

import java.util.List;
import java.util.Map;

import com.niit.electroMart.Model.Category;

public interface CategoryService {
	
public List<Category> getAllCategory();
	
	public Category getCategoryById(String id);
	
	public void addCategory(Category category);
	
	public void deleteCategory(String id);
	
	public Map<String, String> getCategories();

}
