package com.niit.electroMart.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.electroMart.DAO.UserDetailsDAO;
import com.niit.electroMart.Model.Cart;
import com.niit.electroMart.Model.Role;
import com.niit.electroMart.Model.User;
import com.niit.electroMart.Model.UserDetails;


@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UserDetailsDAO userDetailsDAO;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private CartService cartService;

	public void setUserDetailsDAO(UserDetailsDAO userDetailsDao){
		this.userDetailsDAO = userDetailsDao;
	}
	
	@Override
	@Transactional
	public List<UserDetails> getAllUser() {
		
		return this.userDetailsDAO.getAllUser();
	}

	@Override
	@Transactional
	public UserDetails get(String id) {
		
		return this.get(id);
	}

	@Override
	@Transactional
	public UserDetails getByUsername(String email_ID) {
		
		return this.userDetailsDAO.getByUsername(email_ID);
		
	}

	@Override
	@Transactional
	public void add(UserDetails user) {
		
		// First create the instance of the basic user
				User userP = new User();
				// set the basic user details to store inside the database
				userP.setId(user.getId());
				userP.setEmail_Id(user.getEmail_Id());
				userP.setPassword(user.getPassword());
				userP.setEnabled(true);

				// First create the role 
				Role role = new Role();
				role.setEmail_Id(user.getEmail_Id());
				role.setAuthority("ROLE_USER");
				
				//Cart
				
				Cart cart = new Cart();
				
				cart.setUserId(user.getId());
				
				this.cartService.addCart(cart);
				
				user.setCartId(cart.getId());
				
				this.userService.addUser(userP);
				this.roleService.addUser(role);
				this.userDetailsDAO.add(user);

		

	}

	@Override
	@Transactional
	public void delete(String id) {
		this.userDetailsDAO.delete(id);

	}

}
