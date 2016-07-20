package com.niit.electroMart.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.electroMart.DAO.CartItemDAO;
import com.niit.electroMart.Model.CartItem;
import com.niit.electroMart.Model.Product;
import com.niit.electroMart.Model.UserDetails;

@Service
public class CartItemServiceImpl implements CartItemService {

	@Autowired
	private CartItemDAO cartItemDAO;
	
	@Autowired
	private ProductService productService;

	
	public void setCartItemDAO(CartItemDAO cartItemDAO){
		this.cartItemDAO = cartItemDAO;
	}

	@Override
	@Transactional
	public List<CartItem> getAllItem() {
		return this.cartItemDAO.getAllItem();
	}
	
	public void cart(Product product, UserDetails user){

		CartItem cartItem = new CartItem();
		
		cartItem.setUserId(user.getEmail_Id());
		
		cartItem.setProductId(product.getId());
		
		cartItem.setQuantity(1);
		
		cartItem.setTotalPrice(product.getPrice());
		
		this.cartItemDAO.addCartItem(cartItem);
	}


	@Override
	@Transactional
	public void addCartItem(Product product, UserDetails user) {
		
		if (this.cartItemDAO.getAllItem() == null){ 
			cart(product, user);
		}
		
		List<CartItem> cartItemList = this.cartItemDAO.getItemByUserId(user.getEmail_Id());
		
		for (CartItem cartItem : cartItemList) {
			if(product.getId().equals(cartItem.getProductId())){
				cartItem.setQuantity(cartItem.getQuantity() + 1);
				cartItem.setTotalPrice(product.getPrice()*cartItem.getQuantity());
				return;
			}
		}
		
		cart(product, user);
	}


	@Override
	@Transactional
	public void deleteCartItem(int id) {
		this.cartItemDAO.deleteCartItem(id);
	}

	@Override
	@Transactional
	public List<CartItem> getItemByUserId(String userId) {
		return this.cartItemDAO.getItemByUserId(userId);
	}
	
	


}
