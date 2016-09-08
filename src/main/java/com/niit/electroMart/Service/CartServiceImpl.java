package com.niit.electroMart.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.electroMart.DAO.CartDAO;
import com.niit.electroMart.Model.Cart;
import com.niit.electroMart.Model.CartItem;
import com.niit.electroMart.Model.UserDetails;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDAO cartDAO;
	
	@Autowired
	private CartItemService cartItemService;

	
	public void setCartDAO(CartDAO cartDAO){
		this.cartDAO = cartDAO;
	}

	
	@Override
	@Transactional
	public void addCart(Cart cart) {
		this.cartDAO.addCart(cart);

	}

	@Override
	@Transactional
	public void deleteCart(Cart cart) {
		this.cartDAO.deleteCart(cart);


	}


	@Override
	@Transactional
	public Cart getCart(UserDetails user) {
		return this.cartDAO.getCart(user);
	}

	

		
	

}
