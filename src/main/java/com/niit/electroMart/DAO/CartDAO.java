package com.niit.electroMart.DAO;

import com.niit.electroMart.Model.Cart;
import com.niit.electroMart.Model.UserDetails;

public interface CartDAO {
	
	public Cart getCart(UserDetails user);
	
    public void addCart(Cart cart);
	
	public void deleteCart(Cart cart);


}
