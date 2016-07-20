package com.niit.electroMart.Service;

import java.util.List;
import java.util.Map;

import com.niit.electroMart.Model.Product;

public interface ProductService {
	
	
public List<Product> getAllProduct();
	
	public Product get(String id);
	
	public Product getProductName(String name);
	
	public void addProduct(Product product);
	
	public void deleteProduct(String id);
	
	public Map<String, String> getProduct();

}
