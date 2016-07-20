package com.niit.electroMart.DAO;

import java.util.List;

import com.niit.electroMart.Model.CartItem;

public interface CartItemDAO {
	
	public List<CartItem> getItemByUserId(String userId);
	
    public List<CartItem> getAllItem();
	
	public void addCartItem(CartItem cartItem);
	
	public void deleteCartItem(int id);


}
