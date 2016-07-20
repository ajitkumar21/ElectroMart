



package com.niit.electroMart.Model;



import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "USER_DETAILS")
@Component
public class UserDetails {
	
	@Id
	private String id;
	
	
	
	public UserDetails() {
		this.id = UUID.randomUUID().toString().substring(8, 16).toUpperCase();
	}

	private String name;
	
	private String email_Id;
	
	private String password;
	
	private String cartId;
	
	@Transient
	private String confirmpassword;
	
	private String contactNumber;

	public String getCartId() {
		return cartId;
	}

	public void setCartId(String cartId) {
		this.cartId = cartId;
	}

	public String getConfirmpassword() {
		return confirmpassword;
	}

	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	

	

	public String getEmail_Id() {
		return email_Id;
	}

	public void setEmail_Id(String email_Id) {
		this.email_Id = email_Id;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	@Override
	public String toString() {
		return "UserDetails [id=" + id + ", name=" + name + ", email_Id=" + email_Id + ", password=" + password
				+ ", cartId=" + cartId + ", confirmpassword=" + confirmpassword + ", contactNumber=" + contactNumber
				+ "]";
	}

	
	
	

	
	
	
}


