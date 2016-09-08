package com.niit.electroMart.Model;

import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;


@Entity
@Table(name="PRODUCT")
@Component
public class Product {
	
	
	@Id
	private String id;
	
	public Product() {
		this.id = UUID.randomUUID().toString().substring(9, 17).toUpperCase();
	}

	@NotBlank(message = "Please enter a name for the product!")
	private String name;
	
	@NotBlank(message="Please enter Description")
	private String description;
	
	
	private double price;
	
	@Transient
	private MultipartFile file;
	
	@Column(name="imageUrl")
	private String imageUrl;

	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	@NotBlank(message="Please select a Category")
	private String categoryId;
	
	
	@NotBlank(message= "Please select a Supplier")
	private String supplierId;

	
	

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
	

}
