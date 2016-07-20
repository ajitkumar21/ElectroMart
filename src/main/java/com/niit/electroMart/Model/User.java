


package com.niit.electroMart.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;

@Entity
@Table(name = "User")
@Component
public class User {

	@Id
	private String id;
	
	
	
	@NotBlank(message="Please enter your Email Id")
	private String email_Id;
	private String password;
	private boolean enabled;
	
	
	
	
   
	
	
	public String getEmail_Id() {
		return email_Id;
	}
	public void setEmail_Id(String email_Id) {
		this.email_Id = email_Id;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}



