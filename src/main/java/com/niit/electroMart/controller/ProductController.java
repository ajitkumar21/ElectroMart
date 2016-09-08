package com.niit.electroMart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.niit.electroMart.Model.Product;
import com.niit.electroMart.Service.ProductService;

@RestController
public class ProductController {
	
	@Autowired
	private ProductService productService;

	
	@RequestMapping("/product/all") 
	public @ResponseBody List<Product> getAllProducts() {
	List<Product> user=productService.getAllProduct();
		return user;
		
	}

	
	@RequestMapping(value={"/Product/ViewOneProduct/{id}"})
	public @ResponseBody Product getProduct(@PathVariable("id") String id){
		return this.productService.get(id);
	}


}
