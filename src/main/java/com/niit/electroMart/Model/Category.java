package com.niit.electroMart.Model;

import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="CATEGORY")

public class Category {
    
	@Id
	private String id;
	
	public Category() {
		this.id = UUID.randomUUID().toString().substring(10, 16);
	}

	@NotBlank(message ="please enter name of the item")
	private String name;
	
	
	@NotBlank(message ="please enter the Description")
	private String description;
	
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	
}
