package com.niit.electroMart.Service;

import java.util.List;

import com.niit.electroMart.Model.CartItem;
import com.niit.electroMart.Model.Product;
import com.niit.electroMart.Model.UserDetails;

public interface CartItemService {
	
	public List<CartItem> getItemByUserId(String userId);
	
	public List<CartItem> getAllItem();
	
	public void addCartItem(Product product, UserDetails user);
	
	public void deleteCartItem(int id);


}
