package com.niit.electroMart.DAO;

import java.util.List;

import com.niit.electroMart.Model.Product;

public interface ProductDAO {
	
	
	public List<Product> getAllProduct();
	
	public Product get(String id);
	
	public Product getProductName(String name);
	
	public void addProduct(Product product);
	
	
	
	public void deleteProduct(String id);
	
	

}
