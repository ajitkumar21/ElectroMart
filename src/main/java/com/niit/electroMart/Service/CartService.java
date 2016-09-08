package com.niit.electroMart.Service;

import com.niit.electroMart.Model.Cart;
import com.niit.electroMart.Model.UserDetails;

public interface CartService {
	
	
    public void addCart(Cart cart);
	
	public void deleteCart(Cart cart);
	
	public Cart getCart(UserDetails user);

}
